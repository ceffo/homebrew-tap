class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.91"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.91/fleet-darwin-arm64"
      sha256 "06038c8dd58faf8e2e2dc253f8755104923ed43a9f2877e5669e45a82f3bf55e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.91/fleet-darwin-amd64"
      sha256 "360ab775048576a52e3bebcce819f6df35fefbe8b30700c7b3d24ba85eca1216"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.91/fleet-linux-arm64"
      sha256 "7eddeec00f068d875aa312df53379611d114b3eff84691d218573856f11d7144"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.91/fleet-linux-amd64"
      sha256 "cb5f43f938973a60cdd50991d17ddf666180578c2c0f7d17d8f14dcce63752e5"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
