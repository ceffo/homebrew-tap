class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.63"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.63/fleet-darwin-arm64"
      sha256 "a48d34d293cc9039e571915708bf45749647442c9f0afd68d3add315ef366277"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.63/fleet-darwin-amd64"
      sha256 "dc648f2bad35c6b2811ab28b5a272e01a680199d4e21b079bb177049a5fcb7ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.63/fleet-linux-arm64"
      sha256 "3adeda7d7261aca026e0f50e19cf8e645292f50fe257b83eb719cdda48b79a10"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.63/fleet-linux-amd64"
      sha256 "165e89febb8451f8192ba13b51d1629fda3a6e0a005a3d5c4f3f3421592f8e9a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
