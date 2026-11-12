class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.86"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.86/fleet-darwin-arm64"
      sha256 "224ee560a90c31188cdabb231f57b5e374055c2e0bb7d858493e596d69c22683"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.86/fleet-darwin-amd64"
      sha256 "3aca7c5f47e2c946726c62f90b248f5539dcd4bd9fd2898ff56b60b59bc0d85f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.86/fleet-linux-arm64"
      sha256 "0f30dd048bb2d0d1f72e0fef3a89b2c52822411b4eb936a893e0555bb4014f59"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.86/fleet-linux-amd64"
      sha256 "e9370dd9e2374d64837d2cd530afe72368ba3a347116d962ef85a5d79a1752bd"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
