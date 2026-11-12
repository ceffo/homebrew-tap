class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.115"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.115/fleet-darwin-arm64"
      sha256 "45a11e09e89574d31b7227734b2585d5c75ea3fdcbac26ca62f248893163aa90"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.115/fleet-darwin-amd64"
      sha256 "fb24a576140ebb39e6e6d14a51ad10d90dc00cdb21dddcf5fa1592dec3aa9d20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.115/fleet-linux-arm64"
      sha256 "28f6eb0bb71b635c62191ea7fb327dddaf63ba3d421f1a43bf88bb0e79df2415"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.115/fleet-linux-amd64"
      sha256 "aa69943d3ec886521ca1ee6397e584545ecc938380ce6cf3fc3769d2994bf750"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
