class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.133"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.133/fleet-darwin-arm64"
      sha256 "ea76b8b7308864346eef4af6e8ab23efd4505e10fa650f2d403e01907cd9aca1"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.133/fleet-darwin-amd64"
      sha256 "95a73541fa909dc9daa3fcb75ebf5c5877c1c2dd748f3d6f522963177c6d4e5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.133/fleet-linux-arm64"
      sha256 "7df80fd7a78f10b521ee59984ed7089e34216efa34aeb03b9a9a6beef8b13d24"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.133/fleet-linux-amd64"
      sha256 "c90749b70f67202149e94e11311c7a37dd8da8e89f0cfafefb87d959fc2818a7"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
