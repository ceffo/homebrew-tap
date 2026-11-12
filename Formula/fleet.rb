class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.47"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.47/fleet-darwin-arm64"
      sha256 "2dd5cdee363ae9baa2de611d6084e824dda823f0edc070967a97bd0052178763"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.47/fleet-darwin-amd64"
      sha256 "2e4e3870e011684b104082b5dfc4ce253c1eb261ccc959371f8ca045071eff06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.47/fleet-linux-arm64"
      sha256 "3a1d5c7f72b36dffead34a2876eba4850809c5b279b7adb199e68390e98c15b9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.47/fleet-linux-amd64"
      sha256 "f754e228a8175ee841b4ca75609e254e6e1304c7d9db06524b89638b730863bd"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
