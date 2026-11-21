class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.324"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.324/fleet-darwin-arm64"
      sha256 "761f5d25eaf6b5ee588b6b72fcd1ebc2405af44c6aee7e409a9bc3323277eabd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.324/fleet-darwin-amd64"
      sha256 "a9ca017f47b809660f47020fc2a2c80410e497340c4ccd952971b5d3f21f5b5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.324/fleet-linux-arm64"
      sha256 "ddd2ee61ed3f73eca76f6ba196222e02b5d9523f8c55a80dca0585861b365df1"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.324/fleet-linux-amd64"
      sha256 "c1f1fba9066cd218e1985049d61bfd0c78ba5d2d254e69f1d015b3bd87ee9c6f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
