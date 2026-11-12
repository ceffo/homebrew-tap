class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.125"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.125/fleet-darwin-arm64"
      sha256 "0a38825952deaf8fc4fdc772302c2be662f87a3e34c2880f3161f36a3127979b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.125/fleet-darwin-amd64"
      sha256 "1ffc96a7ea1f27600f878335ac119369ef26490b35fc691affc14741e503ce0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.125/fleet-linux-arm64"
      sha256 "ad69c69e37ab1602ddf6e17fd8f0c05f53bf19338fd55636d6abbc87a92e95bb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.125/fleet-linux-amd64"
      sha256 "7531b2577fe212325dee7098a53a373b7b9e24c05e541e865285649e3684d982"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
