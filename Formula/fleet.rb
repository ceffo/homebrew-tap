class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.62"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.62/fleet-darwin-arm64"
      sha256 "10bd22060335e38409ab891f7a6a103ba09ff6adbebd250ac582f3c4cf4a1b46"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.62/fleet-darwin-amd64"
      sha256 "2ed96334d91b95d48e1076bcc47c8044e7c22227eb49296516a20b4151b66b2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.62/fleet-linux-arm64"
      sha256 "6789d07e7372fc84571f29ff78dbc7213de0dbea9d9398649f1dda51207bd6d1"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.62/fleet-linux-amd64"
      sha256 "84f14c705d84ace4225a1a97c29f61a35de8e002e6d81eacb42ad1c8122998b8"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
