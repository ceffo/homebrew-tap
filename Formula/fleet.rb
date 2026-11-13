class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.144"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.144/fleet-darwin-arm64"
      sha256 "572f88aed8aea3e5086c5aa78d3c25597eff93da24a320e155f7d55bb2eafe4a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.144/fleet-darwin-amd64"
      sha256 "39bcee53ff0bb304c1b677ea97e0ca74e8967c6dce85de785d5e169f1550eb10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.144/fleet-linux-arm64"
      sha256 "2c8ed576e5e2f7dd2a1b110957e5e31f50c374b133f8ed7ea2b3843a21967552"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.144/fleet-linux-amd64"
      sha256 "f01e6a53d8c16ecfb234a4798e3bef3b3a701c6f0a464e0a7d4d5c0a28776c05"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
