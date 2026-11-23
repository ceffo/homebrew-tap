class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.400"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.400/fleet-darwin-arm64"
      sha256 "b58f49cc6dbb73f53b03c8a8a29903a8f439096acb4f343eb4a4c6359aedab71"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.400/fleet-darwin-amd64"
      sha256 "18dfa067f47083e7db0cb97746e7c23b751a34a8fc5961db286f696bafe09034"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.400/fleet-linux-arm64"
      sha256 "65a1575789445a2688ec455ea051f0c75bcd1add5fd9a9b56136e49f33524bfa"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.400/fleet-linux-amd64"
      sha256 "44661453fc29d4722d2bb40ce21649f5dc83d1f10ab3b7b079496f66cea8f354"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
