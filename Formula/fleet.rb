class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.9"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.9/fleet-darwin-arm64"
      sha256 "869cb145a37d7f656cad9628a14c93c795283aad11a9331c7e75195720b00431"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.9/fleet-darwin-amd64"
      sha256 "45e33f19c694a80f23618a94a0adb0faf72c04b85b339826231decb5474315da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.9/fleet-linux-arm64"
      sha256 "8b11457a3783657d7ddc0d38c80989d6b29bec103f2a7914ab16b49dee4ce085"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.9/fleet-linux-amd64"
      sha256 "50f10ff04f5f7f98ee472433382652ecc6c826c0f96ff4d9753238f192a30bf4"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
