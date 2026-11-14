class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.176"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.176/fleet-darwin-arm64"
      sha256 "1261a49c6ab94d439e1c61836b104079355576a91acf02bdd5f3591460f62ccc"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.176/fleet-darwin-amd64"
      sha256 "6ca505cfacc61e5a6705bcfe4c88f2ed6e6520f0a9a94ba2aad3ddfc2ab83681"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.176/fleet-linux-arm64"
      sha256 "5a209ae500a0db51c9a66f89d2dfd5b14761af5075b618f099403e0180512b3e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.176/fleet-linux-amd64"
      sha256 "7c832e03a55b5159f7bd8197a482ef98dd29bd40f3e0347586a63265862ad589"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
