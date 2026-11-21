class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.365"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.365/fleet-darwin-arm64"
      sha256 "91574b19a4fbc90f5f721a38344060fb62a0e086f0f53fc811bb8878b99a269e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.365/fleet-darwin-amd64"
      sha256 "ee8e24aff9e0f5063f5b84bf8d2b50ff7e1fb58d7ebe20e228f402a42de2ea1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.365/fleet-linux-arm64"
      sha256 "1fede04d0b3ed3da516ae6995637220c6d56dd3377f11d1a4ec3238404d3a764"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.365/fleet-linux-amd64"
      sha256 "aba5d7511cdd4dd0fb36138f7a4e4ff3ade92891c663eb39e449ecfed31a2136"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
