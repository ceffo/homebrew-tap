class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.105"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.105/fleet-darwin-arm64"
      sha256 "b5da66724088c50296ac541dbf02c07809b34feea11eb906eef78adf053a23c6"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.105/fleet-darwin-amd64"
      sha256 "dfaeebad5b3438ffc817648827bc3ee74556f62569a7206bc5205215a0b8c207"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.105/fleet-linux-arm64"
      sha256 "12effae7c704d1d2222bbe67277514fbb768c7749e7c7d8dc522b2217690282b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.105/fleet-linux-amd64"
      sha256 "4a3fb996b51776f0b4733df436442c6046846609eece2116265b21ecfd9c0a7c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
