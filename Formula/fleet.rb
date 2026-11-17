class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.294"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.294/fleet-darwin-arm64"
      sha256 "7650cb2378a5947e6e355a10292beab236ffdb017884f7f7be8170cb069f38c8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.294/fleet-darwin-amd64"
      sha256 "a28ffdfc0261f8caf48afa759fc937fa86e883b28c2f06e2692fcad527505b0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.294/fleet-linux-arm64"
      sha256 "452dea86a96fcd66e22fedfa1abbb19f8230858ee3390e94e6b59e38adfe78c2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.294/fleet-linux-amd64"
      sha256 "4db7979b7a2ff674e18e1fa16a587666c8bdb78e6b12c7cab440ab12e028c794"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
