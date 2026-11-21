class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.364"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.364/fleet-darwin-arm64"
      sha256 "f9398dc43e7b134f76b5dfa2a8d823b9c25496aab2cde560ef02c93ba786ee32"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.364/fleet-darwin-amd64"
      sha256 "62b355dad8417e2a8d5aee5f67d0f12a22331afbdf3b324713f2e44e16800086"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.364/fleet-linux-arm64"
      sha256 "ece1dc9b7e84a97d757d36313bd644dc23904ba7e38a5c79e27867e43c20a934"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.364/fleet-linux-amd64"
      sha256 "563132a6f9e40a20d35d0a642f6cc8fc752b2dec4c4a84aa4e53ab9755006b38"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
