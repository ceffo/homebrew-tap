class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.308"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.308/fleet-darwin-arm64"
      sha256 "49f968f081de7941db7b35d219cfb3fe016467b0bc077b63c66be895fb641d62"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.308/fleet-darwin-amd64"
      sha256 "21d0d35ad327e55f0cacd3614ed23df0b107039d4ca5586c57fcf3c06bc08d6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.308/fleet-linux-arm64"
      sha256 "12d8bbeb9be9fe2261b3d815c8a19ad9e3fdb45d63fda1c8317a3297ec72fabc"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.308/fleet-linux-amd64"
      sha256 "7b3396e9a0e3b5d68dd7e91306f37ac27c3adf5f13fa22b38afeb9d337072014"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
