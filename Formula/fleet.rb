class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.363"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.363/fleet-darwin-arm64"
      sha256 "be1a8a711bd66acde06739f85b7018a8f14a72ab51929f5e1e31cca508437445"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.363/fleet-darwin-amd64"
      sha256 "238e93531ccb0fdb12a97698b5588fab603b9bd06ef8176476da77b12a47c5d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.363/fleet-linux-arm64"
      sha256 "1ad71049ef7d010680b6e4dd01b043e6ce722ae253e87e1cd3ee733ba213d403"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.363/fleet-linux-amd64"
      sha256 "168faf3a61b278020e09b20056e9d928a2dd51610a53f02318e531c4eaaca8cf"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
