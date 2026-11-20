class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.320"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.320/fleet-darwin-arm64"
      sha256 "8936c549aaa7256a1efb48c0abd6e6f0a699ca1b3555e7227446bcbcb275a06b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.320/fleet-darwin-amd64"
      sha256 "cdb325a6dac6f927a93dbe28b23a0913e65d7b8eef57f8ad8f5aea01102ef057"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.320/fleet-linux-arm64"
      sha256 "8875fb9bb437cf5d350cfb4af2aa3c0c325590cde5dc214a2680cf1afdc74f7b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.320/fleet-linux-amd64"
      sha256 "022a9ff40f8fd5ed5c3e53f12addb5b4d591551d3f7a4c21bb02b520c50dde8e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
