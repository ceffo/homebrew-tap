class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.172"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.172/fleet-darwin-arm64"
      sha256 "bcbf6c04dd7eee2fffe5cf379e8363fd091e1aafd2849800d6789a1dd0042dc3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.172/fleet-darwin-amd64"
      sha256 "081bb5f9be1afde5d1bd13f7cdaa355dfbf325d1e313bbdd426e0746100b311c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.172/fleet-linux-arm64"
      sha256 "5c046261b8e5dc9f3ff69610d50e3d808137af2fa36c121c51df50b1c6c5a290"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.172/fleet-linux-amd64"
      sha256 "0829671220aa893f30b6ff44bf7e68907a304aef203c9900bb671dc15dd4a2da"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
