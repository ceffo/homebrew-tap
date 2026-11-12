class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.76"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.76/fleet-darwin-arm64"
      sha256 "1b2a311797c13942ff429c190370ce3765adf1705c54c248c7c8230f3dca34c9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.76/fleet-darwin-amd64"
      sha256 "79f811c3cde959105a4eeffa6466af996dbf3eddf3fa66eb278d0fee3a9ab0a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.76/fleet-linux-arm64"
      sha256 "27fe9b4fa2d93c79a3a3d491aa516d75e971005768fbbd14c7dcc965219d430c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.76/fleet-linux-amd64"
      sha256 "7265cdccf332ba7b3c080b0ce1e676e13099cdd769f32475e0b4d9f97b34248f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
