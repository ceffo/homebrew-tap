class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.325"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.325/fleet-darwin-arm64"
      sha256 "2027064a8ca04b88244c5d6831a42f83ae3f33ef8f261bdca7ba08fe922cdee7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.325/fleet-darwin-amd64"
      sha256 "24a603098a4cf242d41cbc08c6c388f3c31fc56dd07a450a9bade27ff0e66797"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.325/fleet-linux-arm64"
      sha256 "54f8687cac010cb4a3b2009c8eca703926484337da2de504bb545f34dc379100"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.325/fleet-linux-amd64"
      sha256 "3a315aaf30b0895bde020f3575b8ae363fac46ec77e923ff4d54deaedacbd52f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
