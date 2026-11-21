class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.385"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.385/fleet-darwin-arm64"
      sha256 "ddb56965972acdd488915bafae8624f3deb41d06fadcca239fb5d96a611da988"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.385/fleet-darwin-amd64"
      sha256 "92461196baa033c78127859edee0fa6e6127788380532e434814aec290d72682"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.385/fleet-linux-arm64"
      sha256 "6cc43fcb5b30bc0461d595b18a03f8ffca6efae1261c3355d77c7c7130f4d889"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.385/fleet-linux-amd64"
      sha256 "dfacd08d09d549aad98a1556e4731e5794a77b1942d9d6710567e1e9db7036a5"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
