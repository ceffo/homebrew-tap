class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.296"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.296/fleet-darwin-arm64"
      sha256 "f32655d4b86a5987eb25fbae8e63d957ae6e51b9462a06b30fd1819c4c081e49"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.296/fleet-darwin-amd64"
      sha256 "3cf6ec15ea40a5b52d359df1e4d587fda05de111f9c87778e2ccc11da016944a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.296/fleet-linux-arm64"
      sha256 "e96cc9b25998afc62de740358b6a3d1c76a15d7a45f4ebf8506edc875020554b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.296/fleet-linux-amd64"
      sha256 "2fc810845c0a37e100dd4f20f8778404e5fcb700a8657b0e4b1b5682792ba0c0"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
