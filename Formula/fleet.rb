class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.304"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.304/fleet-darwin-arm64"
      sha256 "63da782bc145caa05d80c473cc9ff682f5a6af18adee5ffb28ea5b22c8cdc6e9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.304/fleet-darwin-amd64"
      sha256 "2d345dcbed5d9c8070aec3be9e7eaaf0a925b5308e4fed1837b8aef252e822d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.304/fleet-linux-arm64"
      sha256 "4a6588fd129dd05349d8b25b5113557d1816a791ce5756242d224c3a8febffda"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.304/fleet-linux-amd64"
      sha256 "bcf164c485d84c400d8283d773cc0a3ca1c6061c65b9cf703b5c397698de587f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
