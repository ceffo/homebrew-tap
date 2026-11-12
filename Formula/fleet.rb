class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.48"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.48/fleet-darwin-arm64"
      sha256 "0dce6faa0cf90435dd931ab236aa209dae77943db77cc34a39698db4f8737157"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.48/fleet-darwin-amd64"
      sha256 "55e60689c45a2fba64d1a31df4983ff1424d8b61fe41a57266fc63aa608bcbe6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.48/fleet-linux-arm64"
      sha256 "50c628609157acf7100f9a7c241062a6b2cec18c34a295f742a22e19a2f7bf06"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.48/fleet-linux-amd64"
      sha256 "521762c8b1df6facda28b423d34ad608ce105f86bc27e3e66127fbe76e4245cd"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
