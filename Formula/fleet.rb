class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.391"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.391/fleet-darwin-arm64"
      sha256 "d2d8a46aca4d0cbd8b90a76b6bca202f3dde7c54b146e09b276b908fa34e3d20"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.391/fleet-darwin-amd64"
      sha256 "43e4a54d342162c7d5f394ce900049a9542ac0f58c46138a7d2ee502f2857b94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.391/fleet-linux-arm64"
      sha256 "8aa5d0cd5f1ed05acd10c2b0b2ecbf0caba4a384d74894945ff558cf76583b7d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.391/fleet-linux-amd64"
      sha256 "4ac233cb485be0d6862c3e84f249a96e8000ece89348a28211419bf5e8178201"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
