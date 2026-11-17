class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.260"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.260/fleet-darwin-arm64"
      sha256 "bc4f9b60cdc6ecda4ab74740929ecb0e6fd4312ca3795ce6e829b024a2f21b20"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.260/fleet-darwin-amd64"
      sha256 "390bab3fad5cb9630e7cda210e7e69b27552c9a5af6138f6d02e33951a8f2b91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.260/fleet-linux-arm64"
      sha256 "ed66328fa4c20263ce3764f4396f6fedd5923b3a3a6aff23a0d7244f15f5060b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.260/fleet-linux-amd64"
      sha256 "8c842fcd71cc952bf4031468418b40792f7ecd6fc4dbb7ddb5b12ff0d52dbe78"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
