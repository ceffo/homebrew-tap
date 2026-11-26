class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.409"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.409/fleet-darwin-arm64"
      sha256 "eaccbe248cd31ec892ff62bdbbe69ba1d71d020e8465343f88e2537dfdef0bee"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.409/fleet-darwin-amd64"
      sha256 "79dd5ff06f4b3f8dfb13806341acc6bc9457fe3f4922e2cf5580b0909f87eccb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.409/fleet-linux-arm64"
      sha256 "5bbd9c06b9e82892e090659cd7b656bc2c0f0e0c1937398b24a0be4b9b629a3c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.409/fleet-linux-amd64"
      sha256 "b0f5ae4d3a1978a6a6a4901946387c102d65c196874fe74bc0a8e34ca0a03166"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
