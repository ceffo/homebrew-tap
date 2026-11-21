class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.373"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.373/fleet-darwin-arm64"
      sha256 "d6b175990c726bfa60f0581464eef0618eeeb34cab3ba034ed586cbf92f73979"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.373/fleet-darwin-amd64"
      sha256 "2a123be92cff6b912f6dc54c7c5a06d8d27b2012ef2fafcb5a09c57b6a0e955a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.373/fleet-linux-arm64"
      sha256 "7464609b70f53b3280e3be70f50763335e17772aec1301bc88b50b7984091f48"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.373/fleet-linux-amd64"
      sha256 "938f9a58f759cd033963825e198304808b9d3bc844248674498f75f4289af928"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
