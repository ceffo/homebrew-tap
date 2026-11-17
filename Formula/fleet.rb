class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.287"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.287/fleet-darwin-arm64"
      sha256 "a19635d049aec47142412edab9453480ec30bc1de67d0e6b2476df93683f6f5b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.287/fleet-darwin-amd64"
      sha256 "08ad4fd6ea939b6265402dd8eb0591dc4e002ee995fad8faa2661278d43adb41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.287/fleet-linux-arm64"
      sha256 "e0e4f69bae332f9405ad3851f78199690e09da9067ff4ce29f864f222dca5696"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.287/fleet-linux-amd64"
      sha256 "88ba07358630dc530627167c34c8bdb70c405dcd0d55a343353e87166bf8016a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
