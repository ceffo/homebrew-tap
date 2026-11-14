class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.165"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.165/fleet-darwin-arm64"
      sha256 "57ac7878938bfb87d898bb97628f51728dbdd9c28fc5e23d6be20f318b40abb9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.165/fleet-darwin-amd64"
      sha256 "f9f134620387f75e28ec149fc3123027dd58f1ccf8059f74f4b5c1687e3d0104"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.165/fleet-linux-arm64"
      sha256 "cd4612aac7c132151e8c7692a83fa8f928ae47413cb9d74b797e09d3a092dfd7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.165/fleet-linux-amd64"
      sha256 "1647f3deca7c8ced50ca01967e7195384947a72dbca37632daf49fbc94bcebc1"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
