class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.92"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.92/fleet-darwin-arm64"
      sha256 "1a739a9664dcc5da662e378b0d49cbefef207581e8d8c51f1b8f9438e5fdf6b0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.92/fleet-darwin-amd64"
      sha256 "37e44b68fab799400ca791a5b74c46d3fa605560a5180fa53cb600018ecb93f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.92/fleet-linux-arm64"
      sha256 "aaab2954f741ff13dcba508e65b165c97ad5082bedabc4f1cddd7ad37772a9ee"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.92/fleet-linux-amd64"
      sha256 "7d2b01f1b074cdbee0e0b3e582fd76dd6e0fb4b51975d9c15d7675aa523b3efb"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
