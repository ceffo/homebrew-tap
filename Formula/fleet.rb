class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.13"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.13/fleet-darwin-arm64"
      sha256 "bc488e696e122586a5dace1dbfc0fa456ae733c1ce5702204da64036406ac85f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.13/fleet-darwin-amd64"
      sha256 "dbf7eb7bf86e1b79318990f659f9bb602c8772e089ca8e9323148e20629cfed1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.13/fleet-linux-arm64"
      sha256 "3721d4cfdb0dd4bd6b71daddc6cece29a12ce9e7a4da756e6b6caa86602426fe"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.13/fleet-linux-amd64"
      sha256 "7ca9e1339f5593690de168923a4ca88a0d86c0e3b9f2d1c60d14daa921ef5b3b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
