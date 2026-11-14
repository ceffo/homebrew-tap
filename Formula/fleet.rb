class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.174"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.174/fleet-darwin-arm64"
      sha256 "ef406aaa31a6a9372cb6016669905daeacb6f1b981e050ac30aafb98e2b45a30"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.174/fleet-darwin-amd64"
      sha256 "f4dc761f14532b8f5ec498d416d043fc7dc9a0b70d15877c3490f87e9439f1a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.174/fleet-linux-arm64"
      sha256 "14d25667e471e29b671eff06c19115cfbb2696c5a44eaa12e1b8e6e4660b4e3d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.174/fleet-linux-amd64"
      sha256 "f78e4c679e43df7884445914ac9a1359686b26d5a1fd5274f0d941d78f03a3d1"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
