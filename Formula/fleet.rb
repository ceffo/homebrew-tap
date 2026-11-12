class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.55"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.55/fleet-darwin-arm64"
      sha256 "d9bc91ef66d7c955c8a9c5f6a6df576cbe5b9d1b9a32716a8bdb0d655db4943d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.55/fleet-darwin-amd64"
      sha256 "7aef7089b040b2e6b772630c86b40e1efe35ad3dc1819a7705b6db52f9a5f0d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.55/fleet-linux-arm64"
      sha256 "5d8daf638a1e9a0fd0bcc6f3a5f616a88c67695ae70fb560ae82554fb1b5317e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.55/fleet-linux-amd64"
      sha256 "cf248af633d58ce61c7bd0c7a6443d10eab7950a459571115880d89f9692394d"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
