class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.138"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.138/fleet-darwin-arm64"
      sha256 "df9b97d575d3848df235d41c297a725f342cffe5ef59fa48ba75898558a4d8fb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.138/fleet-darwin-amd64"
      sha256 "7afb3c56f8cf7cba67d58507b683809907402fd0f1f082360babcceda040d012"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.138/fleet-linux-arm64"
      sha256 "8d00eb303a4fa92586ecf1d8cd4bfa9733e6867d41de2ed2c44f64d8e1671284"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.138/fleet-linux-amd64"
      sha256 "4a5c05e5f56ec9c697c91e908f36286b4a63d839f2b0aa7198d3b48804966254"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
