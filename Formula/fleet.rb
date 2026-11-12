class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.130"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.130/fleet-darwin-arm64"
      sha256 "4cc8a2e3cc89d2ca2fc7866020b42d75d250fe3fe4697b439d40720c07df150e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.130/fleet-darwin-amd64"
      sha256 "15ddc319760c6245e3b42e441f658f0c21b100e609a0aab57384b5736f8f91a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.130/fleet-linux-arm64"
      sha256 "d97f98d71384204ce942845b21faa074c22ef9826c676d0b074f631e6cfa4eea"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.130/fleet-linux-amd64"
      sha256 "65f94e5e6b8e0ec69d6446361a92df4cce876788f74e20a65c81ad2c7dc2aaa3"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
