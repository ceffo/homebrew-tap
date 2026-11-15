class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.233"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.233/fleet-darwin-arm64"
      sha256 "85e7858cd4869fd388c441dc2f76867684925d362572ebe1c2855fdab9d9bf78"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.233/fleet-darwin-amd64"
      sha256 "4fa7bf42a73cc5e0f85112dc1d53c10a5d6cb0fe333104aaa253d557c59ed2c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.233/fleet-linux-arm64"
      sha256 "25a4ea5cabd95e4633cbad80f62e3fa6fbdede6d289bdc0e5e9d902355c6056e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.233/fleet-linux-amd64"
      sha256 "2dcfece5747961ce597eb401f5b8fda86527906038b604300e65d2875fa07e78"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
