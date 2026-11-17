class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.258"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.258/fleet-darwin-arm64"
      sha256 "d29dc1eea9378bc3e350203d21c7ab00f1f9116b934c7bc79d0119b2e8e99af1"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.258/fleet-darwin-amd64"
      sha256 "e9050d4f4b5bc5aace9a8c360ec6b6f17b4d4d9e9dc304cf2a531a48053f1020"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.258/fleet-linux-arm64"
      sha256 "53609592111ddf30498d2efbafae22832bbc805c818a0f9f760a3d937cd667b0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.258/fleet-linux-amd64"
      sha256 "3d429cf3237f87f14b80e76f31e5e1e89f34b63e8863c1a56808d87446293f7a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
