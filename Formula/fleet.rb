class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.186"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.186/fleet-darwin-arm64"
      sha256 "e3456f5c5b53e78184d0126b5e4ba832081be2dde28b7830397a72e09b1e3716"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.186/fleet-darwin-amd64"
      sha256 "ca54e0512e495116bc2d8cc78bdabc463a0c395939ac5e8c158c0f4f5a7c1362"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.186/fleet-linux-arm64"
      sha256 "f7b863a54acfb966ffc70b3f27096290f54848d681ae2acdc841e45f0664bcb5"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.186/fleet-linux-amd64"
      sha256 "e40ffdce4824b3b83c0ec3cf0e4dba4decd0a73b736db38969246556b9e72b64"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
