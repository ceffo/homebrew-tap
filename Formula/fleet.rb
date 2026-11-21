class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.371"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.371/fleet-darwin-arm64"
      sha256 "0e0933b676cf53904eb880f8b1657eafc7b2148ec6dccf2b6da689081e20f511"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.371/fleet-darwin-amd64"
      sha256 "d0d201134efc35a550bebac9cbc379df42589c65bddea3ba6dea338edfe8ba9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.371/fleet-linux-arm64"
      sha256 "ce5d3e79246dd01f9635a4c0d21c9ce7277c4e0c6538b137e273dac83c02f1f3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.371/fleet-linux-amd64"
      sha256 "e9d1395caf69c17ea1315aaf5103289dec55b6d7b782ceb08adfdfe51b96f8e5"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
