class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.384"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.384/fleet-darwin-arm64"
      sha256 "c98df0c6be02f381a7d6b3488de46f76dc71f5d0d884ee2a26dafd7537bd3d72"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.384/fleet-darwin-amd64"
      sha256 "7cf75747f62d5fe4659667d1361b9db54ee90bb1c1775deba00748ded4a3a18a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.384/fleet-linux-arm64"
      sha256 "bda84c2220afd6f5c0b97229bf8d7cbacaf91769394835eb6ec191e98bb05e01"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.384/fleet-linux-amd64"
      sha256 "c7d43f17e036a80c216767b8210f3328f18da755e7cf2859c52da5e88ac9a3ae"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
