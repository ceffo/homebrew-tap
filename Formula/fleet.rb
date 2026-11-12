class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.88"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.88/fleet-darwin-arm64"
      sha256 "f14462d1cc9d2efa436ebc0db0d86b94e67ddebb23ede15a6d62f23169731675"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.88/fleet-darwin-amd64"
      sha256 "86fa02d4a1edbbcc6d1ad8e81fc9386a54a3880427322e0087ed27f7ec3795ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.88/fleet-linux-arm64"
      sha256 "85c45222ea85749d3d65a1a492457478d28732232fa6e5436837e539410a3afe"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.88/fleet-linux-amd64"
      sha256 "5c5f516e63f2cf3f7e82538cfc92b99b7fb00fdc14cab438bb3cd8563f488ebb"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
