class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.16"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.16/fleet-darwin-arm64"
      sha256 "796187174350aae5ff022fa8aebb19d884ff51f07345f4efd1ef434b2830d2a8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.16/fleet-darwin-amd64"
      sha256 "2a65967cb7ffba16f87411120492c0226a928ae947ee788850b9066ad60da83a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.16/fleet-linux-arm64"
      sha256 "c9b90ab89a1e0b62a30de98a40522f94fdbe6f8d62059e58d95e51b08a2d0eb5"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.16/fleet-linux-amd64"
      sha256 "226352914fbfbfe09fb8058454f48706afb51b0b4df07c19807bd550862b00bb"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
