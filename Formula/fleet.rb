class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.213"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.213/fleet-darwin-arm64"
      sha256 "9ced846f51258bfec9e2c61200f5d92ce3bdc539ec16284541460cec27efd37b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.213/fleet-darwin-amd64"
      sha256 "6a86ab082a13cd2f3f7cf944aed1b9d74e22e14808d43c1cb4d632e27e3ad168"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.213/fleet-linux-arm64"
      sha256 "3afa738f58c6df709f7057b57883df996f88650b21d68c99597aeaa1f2edaa44"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.213/fleet-linux-amd64"
      sha256 "4f4a4bfcdc6b36f57891eb1d208dd226025154ab8a5812328fe62cb93ec4a6d7"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
