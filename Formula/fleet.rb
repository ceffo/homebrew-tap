class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.329"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.329/fleet-darwin-arm64"
      sha256 "aa919f42f8e74e152b58a546f845bacbf25ce5d2938c4f12f934bc07b2fce475"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.329/fleet-darwin-amd64"
      sha256 "52d5175e167cc0488be3db518d4af7b9a3ce234d28c364fd47ac8314f89ae2da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.329/fleet-linux-arm64"
      sha256 "aaefb5a138d940122376dd792766ecce5171c447b3c4cb2dd0a38d20aaaae63c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.329/fleet-linux-amd64"
      sha256 "d3760f451d33c17e2516d0c551e0ec78ff3d6f9926947883ae120ae93aba0b34"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
