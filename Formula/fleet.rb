class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.257"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.257/fleet-darwin-arm64"
      sha256 "0d32fcf986144448bfbf61bd8f6b009e76d37a46d995ad9fcc21e815410184c4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.257/fleet-darwin-amd64"
      sha256 "d635dcf2d0ef319dd689cf0bb7129bc9822c62b201ef4a35a5a1cd70184fcebe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.257/fleet-linux-arm64"
      sha256 "8e7b3d753a119f408789a9a9b741a64c577d6c2ecf9993d62f93a60c5068cd02"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.257/fleet-linux-amd64"
      sha256 "40d9e298a62f3d0d347282f28169598e3600a655007ac08d0009800575cc312e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
