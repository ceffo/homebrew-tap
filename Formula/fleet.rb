class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.135"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.135/fleet-darwin-arm64"
      sha256 "4a954e4131ed1fed270e958c46ab51d1d0bf289aeeab702413c27613eb8a437a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.135/fleet-darwin-amd64"
      sha256 "f8261fbbb613c579c2a7ce902ae20cf3706c1567db3a293690ee0a480e4b49e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.135/fleet-linux-arm64"
      sha256 "abafdd8012c793517bf68728d562e1a6625a8e6b86580a491b74c412d6c35ae9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.135/fleet-linux-amd64"
      sha256 "01a6b336300effd58c4a2d52626f4f382b33a79b14e9f4da02a0bb2af822334d"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
