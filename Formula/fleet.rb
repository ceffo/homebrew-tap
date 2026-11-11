class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.3/fleet-darwin-arm64"
      sha256 "097fce304f3a410726b0e2e4e89cce5377510d94bfa3bcfdaf391a7b9b5a4a53"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.3/fleet-darwin-amd64"
      sha256 "401b829d631a033ee670f22f00acfc0d3346a66da639a4629523994118d76fc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.3/fleet-linux-arm64"
      sha256 "7a633a7394e6e55bb8472f5d45d947c134c4c16ca993c533c9fd72e16f73f195"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.3/fleet-linux-amd64"
      sha256 "a1c1740f0cf9bd587fc0e1e7cda9f7a2a95229f6dedf4da29115edebdf919310"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
