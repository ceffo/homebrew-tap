class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.188"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.188/fleet-darwin-arm64"
      sha256 "6d7820ac7d757318fdd99f5695fb005e603bf07c01b1f8d1f4b2babf1bfa1aea"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.188/fleet-darwin-amd64"
      sha256 "b97f8d67cdf90a2d9daa5b1de467e67bc930268057730cfb2f80db4272435184"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.188/fleet-linux-arm64"
      sha256 "cf021c497c1b141bf82ba8c506f5720b321eaae16c08db3d3e37911bc5074a0f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.188/fleet-linux-amd64"
      sha256 "ad9b4109114ba77e8d2f238a9da031392bddd0ff7421fc06ad21616b6246405b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
