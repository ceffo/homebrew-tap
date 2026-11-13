class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.134"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.134/fleet-darwin-arm64"
      sha256 "aa450865be27c72ee66e420f798ea32a684041c9f7e693d72fe6a312366c27a9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.134/fleet-darwin-amd64"
      sha256 "b7e13c163f470b85956a41c6cfc43c7ed6ff14084c82131f71e1424e668667e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.134/fleet-linux-arm64"
      sha256 "9ee54e195c9218eef6b1d8e541831d141958d8cd8faf9abfaf964880bc83f006"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.134/fleet-linux-amd64"
      sha256 "82f5a56175c0289070b5b1499da2cade9714c9b776cb5b21aae99607a5834e4f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
