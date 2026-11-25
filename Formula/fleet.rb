class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.403"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.403/fleet-darwin-arm64"
      sha256 "34b85f1c65c8caffca4046ef71fef2028acd8edeccdb656d01af9b2904164317"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.403/fleet-darwin-amd64"
      sha256 "ca1fd253934ca34a581496e7fba7007df105c8f4eab54976ca1d008c23308bf5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.403/fleet-linux-arm64"
      sha256 "df06ae511c0a8b3e4115e6a5327c6413710520ac8a67eede1c936f4b37c22992"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.403/fleet-linux-amd64"
      sha256 "af09ba28df11d556323c3fdc74a18d0b882f1db32f4a4a84571e81ce9df9c0cf"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
