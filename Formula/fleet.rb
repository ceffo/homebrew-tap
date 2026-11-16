class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.240"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.240/fleet-darwin-arm64"
      sha256 "5de092f34b083a24a3b70775d01bd9dce59ff250805f51d5b8ac82ab437acd97"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.240/fleet-darwin-amd64"
      sha256 "926f7ca0adead0ed07ba9295320de4ea8293100188a5fa8dc2f598d369de019e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.240/fleet-linux-arm64"
      sha256 "c41e20c7f02f5c58f3839c9ddf37c497b15e6204d8ebca84774527d0cdf8da55"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.240/fleet-linux-amd64"
      sha256 "77a0ec0175b5481af92b1931181900ab47d17423f388d83d7e15150720b9268b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
