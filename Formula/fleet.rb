class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.151"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.151/fleet-darwin-arm64"
      sha256 "524cf48ce34ebe706fc7d0f6cce90d4cbfce02737132b06680cfbe62f32acc8a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.151/fleet-darwin-amd64"
      sha256 "2f68fcd12706b2de3bd4f0f6104f6a8afd12261cc69c079d56fcec835a219a71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.151/fleet-linux-arm64"
      sha256 "5677c225b92f35aa62dfce41dffe53ceb3ec8ef5e89412e0bd721d76e2ba9631"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.151/fleet-linux-amd64"
      sha256 "f679891df43b1a7390c901d5fa4240e421b071b14465559660cd587e0b398e32"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
