class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.180"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.180/fleet-darwin-arm64"
      sha256 "759ad83f04bbcebbb4ee4c7f7f7b75e6294568525a09072b0e81266728c10115"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.180/fleet-darwin-amd64"
      sha256 "7da1e5897b1e693c9279f05bfa661c6505c47e9d08edb4565dea2c6fa0870e3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.180/fleet-linux-arm64"
      sha256 "9475d2f7765efc086d176228034526282268535c53c704de9835da6346bf2a51"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.180/fleet-linux-amd64"
      sha256 "60233e61530841b425bb3953bf56067c295fe7ed366f0f8246aa9abc5ec6b4b6"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
