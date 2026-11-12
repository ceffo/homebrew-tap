class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.67"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.67/fleet-darwin-arm64"
      sha256 "c89f00557424d1c2fff867fbd3b7af09737d1cea58f55cc014ca056aa11b90f7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.67/fleet-darwin-amd64"
      sha256 "6ef12a58224b6bea11c8bc6fae82d3243cf99e7993a747e29ba28fde35d3e0fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.67/fleet-linux-arm64"
      sha256 "cf35836721e43187d0f6227b17f09e34d3bf0d41825b788f98ddf63e53a300c3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.67/fleet-linux-amd64"
      sha256 "530a8b3bfc61142e95b9a5cc8c6899b479d8b17d0d64b37978ccbdf76000b761"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
