class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.61"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.61/fleet-darwin-arm64"
      sha256 "1ae44d4fac9d393c4faf35ae8ca2b8907a10fa220f0dd0b8ab0b868d21cfba83"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.61/fleet-darwin-amd64"
      sha256 "37e990a2303e044f6f789eea8bd04e46281962e3d64238cf9b0e2c8cb7d53317"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.61/fleet-linux-arm64"
      sha256 "c4f94b7bad6130d13dc48ca75fb039dc2a6d1136dc22c2f03bd00dd42d682678"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.61/fleet-linux-amd64"
      sha256 "bf373b6144e06992b7649c8583441580e87a94fcb3bad1df81ed91ccbb79fdb8"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
