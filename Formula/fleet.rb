class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.306"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.306/fleet-darwin-arm64"
      sha256 "79d3f7ca7a29fef272d4eda419d1e07ecb36f879651109e647d462128a911704"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.306/fleet-darwin-amd64"
      sha256 "1c5dc02d8858d1470a5ebc0f1f92cc397513838c808283a4de9b4e92de0122b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.306/fleet-linux-arm64"
      sha256 "764139eac1de824f01ad7b61b64f8fa7849f6897da023873b97df844131a43ee"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.306/fleet-linux-amd64"
      sha256 "6de2ef24dee8f1316a00164e18eff7e5c92715241ab08bd7a1ad5ec3ccaa0234"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
