class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.56"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.56/fleet-darwin-arm64"
      sha256 "7a2ba61dff1ff81ea0cffe0d3e90626164b2033c00c97e14f14abad5f506b0f3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.56/fleet-darwin-amd64"
      sha256 "7be63f9ae9c40b10fbb9f076ff36c520ca78840410f9c82ca259f036172e7974"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.56/fleet-linux-arm64"
      sha256 "b6ddc5893d081a8475cd5e3279ccfee577fc13deb12f489f526c04e1b5ec88fe"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.56/fleet-linux-amd64"
      sha256 "bb54a0407870c37393723bb4b88e60681142575bf3819344d24ceb296a49865d"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
