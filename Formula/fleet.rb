class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.177"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.177/fleet-darwin-arm64"
      sha256 "e23163467aaf09fac444770a9c65a47e66374ffed966c3facd2d17c54266b999"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.177/fleet-darwin-amd64"
      sha256 "a2b66e4ab47d2526692c153fda998c7278479cb65c74ced7cca66af6768af0ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.177/fleet-linux-arm64"
      sha256 "4b558753fe4e0ea13e57b2e79c9270fed179ae36eb675bbbd39f96aaaf9f59dd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.177/fleet-linux-amd64"
      sha256 "d88e5b33bad29497edbd4469e72bc340628a9c1c0c8be75c6ac186520c3e1bf3"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
