class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.200"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.200/fleet-darwin-arm64"
      sha256 "09877d5bafbb11964462356874ddcb5f552f9260dd54a111c5c2f8dcec96792a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.200/fleet-darwin-amd64"
      sha256 "bd55876992e19582dd6b6339724cf8a80fb8ad4ea10e6fc16588adba3b4b61c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.200/fleet-linux-arm64"
      sha256 "33d5debe32b1df1037d0515aa8375569cbbaab72bb79f5d2f1053761690e2d69"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.200/fleet-linux-amd64"
      sha256 "a4430d227a7db98298f25b57b6f32951e3e35ffc3fe917d85c3c54e7e08f7432"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
