class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.222"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.222/fleet-darwin-arm64"
      sha256 "d0f123e627919e0899a38a3dd34fadc1d005892117997a96460ef567fe175cfb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.222/fleet-darwin-amd64"
      sha256 "318f6de3266a84f9d74fc21746c779e9b052f4a9c1957f86cba9a7a6cf59bab2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.222/fleet-linux-arm64"
      sha256 "3db1f04f5d9ff8a8d84277d8bb0f574f4ff62d1fe848e5631eab45decde7d60d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.222/fleet-linux-amd64"
      sha256 "c1e2c5687f50417528a00f3849efab10b227d5461ac157d37d9f4f303b750604"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
