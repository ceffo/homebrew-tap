class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.227"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.227/fleet-darwin-arm64"
      sha256 "b299c6e5f8f2ecfd51d5ca3188cb9e57807beb9d56d79f81a952e5e212648622"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.227/fleet-darwin-amd64"
      sha256 "372b4741a18f5d228e012da1f235a159bf93f3b4ee67684e317baeb289185f05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.227/fleet-linux-arm64"
      sha256 "171528fb10d43108b09ff47f59ebc78d5e102fdde9c9ca58382be6b0400f515c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.227/fleet-linux-amd64"
      sha256 "222ceb7d8e120d4f5ddddf56495237b9f2fa46081b970e416f28fed5d35dfbd8"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
