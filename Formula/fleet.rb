class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.380"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.380/fleet-darwin-arm64"
      sha256 "ba92723c231baee2d119d692107261fba25262d7f88ab3d8c75344520926bf41"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.380/fleet-darwin-amd64"
      sha256 "9255f2936625bc8e4b781c30d237c175daa87f7538685bf382c8c04e37122c83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.380/fleet-linux-arm64"
      sha256 "06f5e73fbeb94f2236e3bf6627f2cfd7813c2fbf56bf21032b0e88245433a2c5"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.380/fleet-linux-amd64"
      sha256 "998fa09d396b5bb2333af2fbdc3a953b8f7ab7bbe53c3293d1bdd5258ef78b45"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
