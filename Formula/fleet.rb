class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.355"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.355/fleet-darwin-arm64"
      sha256 "a3743a319a40727a634607cc2f3e4d08e6c1572d2f6cd80bec1d8ff61872eac4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.355/fleet-darwin-amd64"
      sha256 "38bdcfbace65d6303524d930c64f53cb2858e94e9912d78ab893bbe06fb7f747"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.355/fleet-linux-arm64"
      sha256 "cfe58aa39adb5f66f6a36a1d721b5f5cfdb1644d0e3d0e29f33d355e6fc2e03a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.355/fleet-linux-amd64"
      sha256 "46eca3178942da2a713e2160f1a6b2bbc516763df5357c160afaac721ab542a2"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
