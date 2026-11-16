class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.242"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.242/fleet-darwin-arm64"
      sha256 "85cf56e1ba301cbd1feec1a0bea71a3048fb030b3f4ec787f58685226b4b41fa"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.242/fleet-darwin-amd64"
      sha256 "ad19a3f3ff2dbaacd005f6250ad2305c636e70cd0a2545cbf1d102a0679cf5d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.242/fleet-linux-arm64"
      sha256 "9a6e3da2d6d3f327908c58ecc8a3619a1b82899842123ef49eaf66ccdbce774e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.242/fleet-linux-amd64"
      sha256 "777ea23f0daebf84d259083caad9fc36730e10f76a1e87442d9a5e3b046def14"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
