class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.74"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.74/fleet-darwin-arm64"
      sha256 "798ab2ed2c62f41f0e6c9d3124c9a1cd262e5f9994ab2f3cce126f15e1a2e796"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.74/fleet-darwin-amd64"
      sha256 "d296b1aef89707bfb281665a9da9063001245cd4501edb542e37d1c3a1595596"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.74/fleet-linux-arm64"
      sha256 "928500b76cf27bda6a918cdb2cb2f8acd069f802e8e11cd9553f9a05e6bf2fbc"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.74/fleet-linux-amd64"
      sha256 "98f763371657046041f0f2018c7845947c77f3151fca300b0c823d6eba551bce"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
