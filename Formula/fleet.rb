class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.352"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.352/fleet-darwin-arm64"
      sha256 "76377230463a714b72d28598ffe75639e27fcc6b3a7cb746e36fed8e25aaab95"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.352/fleet-darwin-amd64"
      sha256 "419d5ca541a1d157eab070f5fa031443d18e8d6248bbbb7fb7b73b02e8b986b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.352/fleet-linux-arm64"
      sha256 "e2eba8f04da5bf53b22ceb6101941c149b127490bd06b83de7fab3681d23c274"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.352/fleet-linux-amd64"
      sha256 "98c782e9b93de7fffa5f35bf56d67ab71a74e3e842ef419ae92c2e5f641aba6a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
