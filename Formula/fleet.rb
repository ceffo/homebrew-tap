class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.396"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.396/fleet-darwin-arm64"
      sha256 "20fbe9826403e6980cf1f09be978d3364da435b124a7c3f17f5512d7e57d0d27"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.396/fleet-darwin-amd64"
      sha256 "e725c86c49a961c055edf0cbd0c28cd5fc99b3b96e9bd87522cc599440d40d66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.396/fleet-linux-arm64"
      sha256 "d292a9ec188828cac0c9494bfb8ead44b907b0adc19b1a7e3e5d1d8c650d2136"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.396/fleet-linux-amd64"
      sha256 "88588b523012775fdbe9876b9996bbb7019bd5ca415cdfea73a95a9f43fc2891"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
