class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.163"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.163/fleet-darwin-arm64"
      sha256 "3d64181274eafb4ac27393c7e914d01f97b2ea6eb923a3e1bee0fc0c0cb2fbbc"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.163/fleet-darwin-amd64"
      sha256 "4b7ae008e31824f90915562e99087e5daa4296c90a35b7abc3e7eb52fc340949"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.163/fleet-linux-arm64"
      sha256 "c0517a7b87fc7ccd461c9334def1be80fc47f4bce7e0c3428522acf61b5a60f9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.163/fleet-linux-amd64"
      sha256 "c429624a6f27b3566b25f93de614e559d268c3d0635150afee18e515b3684685"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
