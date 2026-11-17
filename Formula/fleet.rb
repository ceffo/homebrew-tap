class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.271"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.271/fleet-darwin-arm64"
      sha256 "9f3a11e7319380f058aaa8c70100de5949d34d621f2b49d4d39abe71865da286"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.271/fleet-darwin-amd64"
      sha256 "204bf8e63eb24398f0c1bda1bb0b8b9195e8304d4b7c8a0cf675c2f83c77565d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.271/fleet-linux-arm64"
      sha256 "8975f6a86be4aa3fa005615527eead299a0174a15bde8b57949be25324cd4790"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.271/fleet-linux-amd64"
      sha256 "7bba374835e9217a01fc48b539c1869cb7e776bb4047a601cb4c6bd2c9daf7e4"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
