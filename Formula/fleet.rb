class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.302"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.302/fleet-darwin-arm64"
      sha256 "b0d30134e0a31b775ffb3173c51336c14fa5ec5614ed2eb5f375645cc37e2e1f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.302/fleet-darwin-amd64"
      sha256 "9a2c18ae16c87acf453e2a85fb07c2d201f15e9fc760789ae62afdb937b505ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.302/fleet-linux-arm64"
      sha256 "13b74c1d7e6efbaf3435b4002c2fdef065e279de0d31529449a565e19218239c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.302/fleet-linux-amd64"
      sha256 "28d6b0b5764c928ea2495fc4253dcb00c40538251f0e09a0a36158d6898fb98e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
