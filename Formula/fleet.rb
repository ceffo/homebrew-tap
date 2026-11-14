class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.158"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.158/fleet-darwin-arm64"
      sha256 "d62ac9f78ec1febba30087d0e06e87edfd49c6b663bf03271b0acdbcea0cfd0e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.158/fleet-darwin-amd64"
      sha256 "2e53a924262c75000f73c3f46eccfbecca1ef169fb696da58fca1a1641c87986"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.158/fleet-linux-arm64"
      sha256 "18a1851c820444350e1a877c231e5a8fa1b85c6a50beb168855ea3f5a124f335"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.158/fleet-linux-amd64"
      sha256 "12f47e8c1d6fe7f7e9b9aea6d4686a7e8267e19c19a4485fb51e7fe2df5a12cb"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
