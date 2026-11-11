class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.5"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.5/fleet-darwin-arm64"
      sha256 "e0c816febc3d9b15e24efbd2d7f297c29dcd62ab7be5a4bbf0a5ba4e6066355e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.5/fleet-darwin-amd64"
      sha256 "e49df0f62f5880443dfc79852d2d7a9d6f840c35c835cf143ed352e6b142c9bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.5/fleet-linux-arm64"
      sha256 "2e7248772c41be4acf8373d442363a9687c947c03ad6ced0a3ac2cfd58fa58da"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.5/fleet-linux-amd64"
      sha256 "c7d5b8502363205ed1a4586fc497cf99b6b9e304e7ad7f9c604eb3b31c8fd37e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
