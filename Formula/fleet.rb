class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.236"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.236/fleet-darwin-arm64"
      sha256 "11dc9de42010cdd13b6403aa005ebd194d25d7e2c081fba35428c21089702452"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.236/fleet-darwin-amd64"
      sha256 "3c0adef083f4f9857413a710968f1e7c63d2b04dd05ee4ee33196617325d4457"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.236/fleet-linux-arm64"
      sha256 "2b01ae9a4259166c8d5b852aa62818717d9334c2df254e325dc248ed392cb3c4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.236/fleet-linux-amd64"
      sha256 "8ba72f35bac155505d83de83607255bd4d9e819ed4087bfa7b1dd2170a90c080"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
