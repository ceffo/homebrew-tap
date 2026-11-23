class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.390"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.390/fleet-darwin-arm64"
      sha256 "9121cfbcf935d8d7d893499ba9b8af42d0082a194ab7a2712b9ce871c7a32c1d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.390/fleet-darwin-amd64"
      sha256 "095437c126ae4c5b459d26af172351a802ac91143fc9b80cec63c6b9372c42b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.390/fleet-linux-arm64"
      sha256 "1280ff167bef62558d1d0c90e706a55ea66a5f88bea229a530d28dda1fb3053f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.390/fleet-linux-amd64"
      sha256 "88fddf47fb6c46470de8ca11a6696088a3747c6bee0e786e8ad77cea8910155f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
