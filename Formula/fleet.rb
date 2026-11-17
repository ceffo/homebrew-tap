class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.262"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.262/fleet-darwin-arm64"
      sha256 "3d16d0f18134c2d0f325bc0d40518255cc3bd5ac9f57485ce2cdc256211ffa66"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.262/fleet-darwin-amd64"
      sha256 "947e7a33b31f5f31bc1dab114018fbf937ab930b6c36375359285ac8723f7928"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.262/fleet-linux-arm64"
      sha256 "dd84585027f8c4aca815a32fbfb975105e3b7a22dc6868a53c1d17d3d169cdab"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.262/fleet-linux-amd64"
      sha256 "4d302a494ed8d4194a2f9c22567af823035e41b3dc824399ba70d4037f88f751"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
