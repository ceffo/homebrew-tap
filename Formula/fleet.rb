class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.175"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.175/fleet-darwin-arm64"
      sha256 "1aa262b9bfe96b7064ff6cbacaf8cfa38188cd743dd298deeb066ca561412e3a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.175/fleet-darwin-amd64"
      sha256 "42ab87bd5026d2473a31cdaa81dc13ba5768cd4bcac64768731ddf85ac721c25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.175/fleet-linux-arm64"
      sha256 "f6a19a38bb86719eb252d7fb1f57ebd0661dbdd03c5562f02483fabe91bc4cd5"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.175/fleet-linux-amd64"
      sha256 "fd6935de67b30bc68f710525b241b1a2d0676cac2088c6bec6588b2b98bfbfce"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
