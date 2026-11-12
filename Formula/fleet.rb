class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.97"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.97/fleet-darwin-arm64"
      sha256 "b9bedab5ed423fd397f83c2f743823f0991279ce23f24ef1e840cc073e46963f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.97/fleet-darwin-amd64"
      sha256 "e42d0b677d9dd186f29ddc9fd0108dcbb0037924a32dbdf82eea2589f7cbb406"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.97/fleet-linux-arm64"
      sha256 "83e1c4a198bc82c098d8393037331e6536a2a47905a8fd1e05fb63d813b8bc51"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.97/fleet-linux-amd64"
      sha256 "c70445f748cb36695d624e862a65460d4eeb28ae2275f2895d08b92e29c600f1"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
