class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.209"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.209/fleet-darwin-arm64"
      sha256 "43043053ca1c5d51d368879bb4f161484bcd0806af57e78bacbc8203aa3970fa"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.209/fleet-darwin-amd64"
      sha256 "f95e36a2fa21ecc12471a3e20400238e13e50bf6b188fb6daf22e95dfdba0061"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.209/fleet-linux-arm64"
      sha256 "f9acf664aceb1bc56b100926d066b42bf7121dda0585de24815883a3c8aedb5d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.209/fleet-linux-amd64"
      sha256 "617fbf49bb8e2f4d522c794939ad43906cc1547610797801d5daabae74a4ad65"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
