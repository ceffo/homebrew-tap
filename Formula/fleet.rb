class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.223"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.223/fleet-darwin-arm64"
      sha256 "a631b7d3e51359fd1eca084aad6547bc6f12a178ef3bb20fb9d2f2ab99fbaf11"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.223/fleet-darwin-amd64"
      sha256 "639d7133a3c5e7578bde1b970774f8b5407ecfd7d1652e9b23c528f37b125729"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.223/fleet-linux-arm64"
      sha256 "c2cca614fbdafae5f91a4ecd3450d5a37789434933ca8c31fa0eba7d5d39ab89"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.223/fleet-linux-amd64"
      sha256 "73660ed7a1b76f0ad3ab3b4540b6e18dddde5d448df6c28e24a6cbfe39e6cf01"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
