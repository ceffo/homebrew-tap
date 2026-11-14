class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.205"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.205/fleet-darwin-arm64"
      sha256 "24d0b458c3b5f5fd727714f986a4fba7123ef047d693fc0103e823b97d9d3d0d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.205/fleet-darwin-amd64"
      sha256 "dfa3b3cd780198553521c6de231e63955b72ad94aa668b389e70ad4757b47e64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.205/fleet-linux-arm64"
      sha256 "1b58d41f1a7e215496d125e4d041c7553614cedd2a03f0680fc0389a7d52406e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.205/fleet-linux-amd64"
      sha256 "92bee3b4f3a2a70aec22ecdc445ad9b490349e745cfeb0f9de21e46d5d67a52c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
