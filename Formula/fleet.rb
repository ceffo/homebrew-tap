class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.83"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.83/fleet-darwin-arm64"
      sha256 "a7604ff8e8da0959c7e7328f5ba4c8ae6058e4308580a4ffb7a7af919460cd3d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.83/fleet-darwin-amd64"
      sha256 "a9df3ced629dbb18b1fe4f54f31e34e76184980c1be79d9687f0b848b8ef6440"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.83/fleet-linux-arm64"
      sha256 "5989c3b12999644803e1954547472e6909ea9ee1b6c5032ab3a5cc8af04cbacd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.83/fleet-linux-amd64"
      sha256 "5a8ea7bfb2015bf3f18888b07d0b0e19b930dfb1ba6c0b5c050018ec231208be"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
