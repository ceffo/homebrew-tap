class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.336"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.336/fleet-darwin-arm64"
      sha256 "76acf0410ec5fcfe23f3b6cf387d9082028956b5f30eb4d7486eb00a08261531"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.336/fleet-darwin-amd64"
      sha256 "564c20d2ad0d244fa1f148308f4df4ebb20f92721622eac2e0b98907c2a36990"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.336/fleet-linux-arm64"
      sha256 "91311c490ec179f7641710ad888cbfdfbc8fb8fa28aa3789b83c14fdca5e47eb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.336/fleet-linux-amd64"
      sha256 "fdfe76197e8702291b2e7ca7c21a28156f34504057652e62ccaf85e94429cb42"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
