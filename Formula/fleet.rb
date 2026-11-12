class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.118"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.118/fleet-darwin-arm64"
      sha256 "7a1e6fb483646c5b5c511b0bca1e1fc1a98675a02d96881496822e58184aa91d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.118/fleet-darwin-amd64"
      sha256 "b46d8811efe570e02445d1d5942b0295a806876365e7434fd157ea3c45055aae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.118/fleet-linux-arm64"
      sha256 "0939d75759ca6eb9b469440dcddadbef25b54c9cbc9a4ced96606e8b079fc334"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.118/fleet-linux-amd64"
      sha256 "3fd2fb8374a4d4019a3dfe8af4cbed0e87d575a40c3b9ef9138996e4bbaacad0"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
