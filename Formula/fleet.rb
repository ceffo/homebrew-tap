class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.228"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.228/fleet-darwin-arm64"
      sha256 "b48bf95806dbad8ed45bfa9830242b38a40ea8cb5ee60d107858f09ef21ff4df"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.228/fleet-darwin-amd64"
      sha256 "ab503ddf5391a2496251a4e257505097b69d20d2bae9dcb04111bded790d4662"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.228/fleet-linux-arm64"
      sha256 "b4d10a335be1300d8e395fad657bff885174fe24d5711049de2e28f763043340"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.228/fleet-linux-amd64"
      sha256 "527aafd2be22785f1ac704e60b2c700793e8a53fe85fbd46a1f21af5fed0ac4d"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
