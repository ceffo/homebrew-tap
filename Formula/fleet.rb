class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.376"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.376/fleet-darwin-arm64"
      sha256 "16f1291f625805e0ae82ff582414a6d6b74e859da8476705aa06df1284a22e50"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.376/fleet-darwin-amd64"
      sha256 "73003f26fc901cf7b3f6e582ef9270ab0c407095a0b6b3b6073aa7f667a73fd9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.376/fleet-linux-arm64"
      sha256 "7c7ca3a8753ff8826609bac75db00f798eef953ea43adb4898e941e1f353a3c7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.376/fleet-linux-amd64"
      sha256 "77edd3914b350f56d1971de0776e5d9a27898bfa04a6c6e1db09c076431db7a7"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
