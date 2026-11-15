class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.219"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.219/fleet-darwin-arm64"
      sha256 "5159daf35423583cceb054b921f59b4e3343575b1cacd49dba9e6fc884f56eae"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.219/fleet-darwin-amd64"
      sha256 "2ac672fb49525e608950ef1c08349d305c8e27aaf92fd405a5d92b85b1aea7c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.219/fleet-linux-arm64"
      sha256 "740742ff0989cedde8723d11225621288516094e1e7cd989e4a47a7a697e8ae4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.219/fleet-linux-amd64"
      sha256 "95b6a7aa22d353547608fb3544c94f78df6083675c4aa564d481ad810becffb9"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
