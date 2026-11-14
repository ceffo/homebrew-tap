class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.168"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.168/fleet-darwin-arm64"
      sha256 "c2a27257e83af6611b46b4469b8ee7e6dba30cc56a7308aa89356ba687997d32"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.168/fleet-darwin-amd64"
      sha256 "2ddd244e30ada4a24566671d5ec6373c449202c98af6c3ea3a1128f9c86c9f5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.168/fleet-linux-arm64"
      sha256 "eae3fa45e12a950eaf3f2fc7584575e95e9d13d42c7a715ef67192714e3ea720"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.168/fleet-linux-amd64"
      sha256 "2e1307a71e259143b5c9b6c1ac6ca3d621db268e20d1552a1833b374a3348d2b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
