class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.230"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.230/fleet-darwin-arm64"
      sha256 "a751a0921d107f6af6434741bffa0a64fe6193b80ff597e90b75d1f0f40cec84"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.230/fleet-darwin-amd64"
      sha256 "020dd058b5211f7bfaf79f275fcba8ae35dd5ffa862a9880228913d1ecec495e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.230/fleet-linux-arm64"
      sha256 "d25f2fc7b29058bc61809a7c201e4f928a92affe27034a1f5235d5f9ad66503b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.230/fleet-linux-amd64"
      sha256 "d5a90044b0180312b41ebe19a6b599106073a49cbe11473e7a9dfa97fa5c54dc"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
