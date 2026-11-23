class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.395"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.395/fleet-darwin-arm64"
      sha256 "2276e9c3ff8fce0901a0ef441ac65e9aa5abb0d4f19fa5975883c716e721d840"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.395/fleet-darwin-amd64"
      sha256 "ae9d0de21972bd68ed848ab9d356ba131c3042775c35eeecbdfae01649d9ea64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.395/fleet-linux-arm64"
      sha256 "833c8e8430b9e11ad265b1c250d8fbcb6d309bdfe621d9b258fbb5a19a340787"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.395/fleet-linux-amd64"
      sha256 "5e000158419c999bf30a872c3ad3eced77fb5d438129e46c270677db29fa5331"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
