class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.372"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.372/fleet-darwin-arm64"
      sha256 "5b407b763b4ee00682ec9ec99ffb31876625505131ad53c966954b545a203408"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.372/fleet-darwin-amd64"
      sha256 "55e9d2b5c7ad71348b454fc79a0cd3c3563b609882c8ce5499498bdde0a0a925"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.372/fleet-linux-arm64"
      sha256 "35479be4a8eb1e210e3e2912408168304ff2b7dd54d07dd6d6e4cfec82474ab5"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.372/fleet-linux-amd64"
      sha256 "5e0256c2adc30ff4d9d617b83e6882687ddf18ee7727050946fcccb97d553c69"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
