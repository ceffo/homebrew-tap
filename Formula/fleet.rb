class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.132"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.132/fleet-darwin-arm64"
      sha256 "ac88c57b136419fe4da6b9d18a6cdd05f083b8919c1eba0d056a377fbfeb8f44"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.132/fleet-darwin-amd64"
      sha256 "da90c87d6ececf246b9aa026cd37c33b50518e16656fdecd46f2d080ad03a97c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.132/fleet-linux-arm64"
      sha256 "b27bb59aa74f677183b6490966f2263d46f89af16c20b462a45b9b58c5a30ca0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.132/fleet-linux-amd64"
      sha256 "38b03289e4c340d658cd52744b8d4725334372b47aa95605214d750b481e9134"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
