class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.247"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.247/fleet-darwin-arm64"
      sha256 "a10c6714876a99bb4dc14d6c9cca32457c318b41f127cfd757383247d9c3f1de"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.247/fleet-darwin-amd64"
      sha256 "b28e8b95919860210fbf30e3f9eef40711e87c2661c38fc12d09e991078f6896"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.247/fleet-linux-arm64"
      sha256 "40f0ad201758d531924e135cf5bee7acb3b8078cc3dfdf6cc5154d3cef349be1"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.247/fleet-linux-amd64"
      sha256 "6c97f917309e3ee2e86a1f3a4b0a524cab4f5bd25b6da04eff5ddb33d5457ab2"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
