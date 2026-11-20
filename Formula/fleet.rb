class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.323"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.323/fleet-darwin-arm64"
      sha256 "31872f4be50558bb4a6839a03121b5989807570af304165316dd1bd1677f3dbf"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.323/fleet-darwin-amd64"
      sha256 "d134c1ce2c0a79c95c52ac2d57e0aa9ecf50899496cd09dc710a84e632504629"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.323/fleet-linux-arm64"
      sha256 "637a5b7674283197a2181d597fe79492f5dc3ad61e91ae754462212d157ba8a0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.323/fleet-linux-amd64"
      sha256 "34c71dabea46fd82e1eb92a4ffff1cd91c32c528366b2c8b3df3e4338a8affc2"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
