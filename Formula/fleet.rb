class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.101"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.101/fleet-darwin-arm64"
      sha256 "4a49e988a26b29c448393270f7aa43497b4520505e1cdab4bfd61578fc43f056"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.101/fleet-darwin-amd64"
      sha256 "f8006598dc22e5ce7a1b4b76c2876cfff13b87bd983eda5088ce1823bfced33a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.101/fleet-linux-arm64"
      sha256 "452ffefe458f6e9b94b7eb0cc17020f8f0471249b1d6b843b1ad8e74f6b57c09"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.101/fleet-linux-amd64"
      sha256 "d1d295052c2104cd12420a502ca15e657a0060464a75d0954b166ad882217594"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
