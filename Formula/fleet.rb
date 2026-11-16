class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.244"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.244/fleet-darwin-arm64"
      sha256 "e9aad6b8060b4e0f385a1091d33af6c14fcd61e16f6ca043d6821c71bb9b51f6"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.244/fleet-darwin-amd64"
      sha256 "2c5901712b7a128a265d94bc8a0a917354baca597918516a254cea527596c398"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.244/fleet-linux-arm64"
      sha256 "b6b16c8b26b718c83eecc0d641b0b868cb55a970cf803e7d986da8e3639e8744"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.244/fleet-linux-amd64"
      sha256 "853d53115fd8a62840e9682c7b624b352967e04dce54afb477949fc04d7fd3ac"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
