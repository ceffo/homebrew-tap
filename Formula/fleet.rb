class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.251"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.251/fleet-darwin-arm64"
      sha256 "5a23d3fb4da3041333b06da22cca36969f8be927ba71f7f3db7e0c2de1d0b4df"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.251/fleet-darwin-amd64"
      sha256 "e3699a7b1cf3594618195980d9910b063058180605b1363d4fcd581c286ffeea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.251/fleet-linux-arm64"
      sha256 "e7ab3e35a5c369688d7916286ff514898579bbd6ca50acb19d53731eeaeda369"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.251/fleet-linux-amd64"
      sha256 "bd122ff2e93ba5dddf631d12c7050c3ff3c409b05f3864ee6447d69e07d4d9e8"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
