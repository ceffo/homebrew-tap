class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.77"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.77/fleet-darwin-arm64"
      sha256 "39403cab0405727a2a5e9bd45620813a3db212f308d2ce1a06d1b33f351d0224"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.77/fleet-darwin-amd64"
      sha256 "97decb30d22f82c3c9a4aa293a16d95d02f4e4af90d35a0c22428b06607e3b08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.77/fleet-linux-arm64"
      sha256 "ff27496b970f4b762aff6db0de6fcf960e6b0f6bfee7853fc209a4640ddf3f89"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.77/fleet-linux-amd64"
      sha256 "c2a894a9db369595a7e0c213294ee314d4ecb3a57f8625c1ba99145744730a03"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
