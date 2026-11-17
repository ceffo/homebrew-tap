class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.288"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.288/fleet-darwin-arm64"
      sha256 "13e0c936aea67bdfe173c6e47f2a7ef146c9753c066c6abcf5f2b419bfb48fab"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.288/fleet-darwin-amd64"
      sha256 "1cde5a027b8b9e37067ca3323d58c563ef63443887aa22f49c7e1d037f5fe911"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.288/fleet-linux-arm64"
      sha256 "16fdacb236e2ce575f21b41b4facf68564aea3fd0fe6cc6c1d28071890ae94ea"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.288/fleet-linux-amd64"
      sha256 "1f2b14eea6243d34cb1e23092bea64b49dc7231e4229cf707fd01935ec059b5d"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
