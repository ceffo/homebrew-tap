class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.237"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.237/fleet-darwin-arm64"
      sha256 "01791f5eb65d34576f9a8e298c414e642621bceb572d53b83b7a8bc9f8c4c1cb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.237/fleet-darwin-amd64"
      sha256 "06f2c44a9fcdd2dde5767904bbe5c24f088545a8cb3de04d45694f76e40de568"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.237/fleet-linux-arm64"
      sha256 "998ea75a67403cb9061246f1a04e133a50fdfbb0a06b781f104fffa3b8602861"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.237/fleet-linux-amd64"
      sha256 "88beb17d7f1c051cdef474596b12540949c82e97af08c8918cec25a06dba72ab"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
