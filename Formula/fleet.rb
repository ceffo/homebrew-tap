class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.113"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.113/fleet-darwin-arm64"
      sha256 "5f779d3d4921b827a466ec60a9e87fee64dfd7371aff5cd38866f4cff18ca747"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.113/fleet-darwin-amd64"
      sha256 "b12423fbbb0ef4dede2386b163b9cf56884cda446225681adf24877037482ea3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.113/fleet-linux-arm64"
      sha256 "fbcc89342031d84d41b3edd24ceb4cae7c126c8d250fa69a5d30c45705e7fa0f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.113/fleet-linux-amd64"
      sha256 "b2ee3bdfb3c45d41454a846d75e988ff901809dda202f03f0bd27374b205d1fe"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
