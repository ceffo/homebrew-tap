class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.162"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.162/fleet-darwin-arm64"
      sha256 "202f0c325dfc2d368c404f3783566c1c675f1354282dde55266282fef6f04ec9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.162/fleet-darwin-amd64"
      sha256 "e2a401425fe08a115aa6d87650d63a40da9556241bf0bd056e9e948d97328f72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.162/fleet-linux-arm64"
      sha256 "f5e6fbdd007fb4de727972a5d60aab6acbe035beec023a989067323d07d182a4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.162/fleet-linux-amd64"
      sha256 "a0f0a29601d617afb0699c908b0571ba1d6e0ad1035d4ede1fbeab7166b4d3e0"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
