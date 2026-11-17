class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.278"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.278/fleet-darwin-arm64"
      sha256 "dedf210a8afa50a9d60692298da27a51dc5af5cd1333f012c46a0d0bb0012dc4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.278/fleet-darwin-amd64"
      sha256 "9f7a07ae482d145d01ee7759c6327a7ac3df4e6d70a15b50fdf90c4cb7dc6262"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.278/fleet-linux-arm64"
      sha256 "47088f2660155681fbc8b081b33f9c42883fc1e41e8e70baa4fa9603539c1d00"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.278/fleet-linux-amd64"
      sha256 "3a0c41f7639763ebde741823ca33fcbfb96f943b46cbbd76ed708b904067e51c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
