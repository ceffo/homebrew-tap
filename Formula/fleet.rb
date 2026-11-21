class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.342"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.342/fleet-darwin-arm64"
      sha256 "cddc7eab0bd6579fc15557e797409ce589c9acee7da86ca1b6fb3dca8a6d13ce"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.342/fleet-darwin-amd64"
      sha256 "68be8c8d0696873940491b2a29179f6bd81eeadca041fae0ac7cf1f5575717f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.342/fleet-linux-arm64"
      sha256 "87202ac96e61732df86bcf7c7ddefecc5f7a743867714e8fad1756034b3b1bb0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.342/fleet-linux-amd64"
      sha256 "8a97a8b8459a44d1eedeec6aed4be2527c156663b880ec27b20c8c8bd0b32e1c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
