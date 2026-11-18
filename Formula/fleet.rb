class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.305"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.305/fleet-darwin-arm64"
      sha256 "18ba830a9c592478d939f37c600f73a380d4c68d4f6058b5c4a3a685f0877cee"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.305/fleet-darwin-amd64"
      sha256 "01b189d1d4e2852713e5aaefb0a9168654308ef984c5b38bdff5c6405177e8f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.305/fleet-linux-arm64"
      sha256 "3c14d75275e2e737ac13e0ea6f5385bc99d4a7215f02193fad59c9a25fc1047b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.305/fleet-linux-amd64"
      sha256 "23f632324964e4e10e265d6026b16cc5e953aed62aab93e5e04aace205738a7d"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
