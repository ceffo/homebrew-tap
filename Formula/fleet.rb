class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.259"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.259/fleet-darwin-arm64"
      sha256 "1e83a586425e4769c68f776ff596359194d43dd93cb7b1e6943c422bf9090f8a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.259/fleet-darwin-amd64"
      sha256 "ae1d6262865195f5f828838b940bf78730c02b5d9b58ead1c99c913ba3cdab07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.259/fleet-linux-arm64"
      sha256 "cfd55ad97c623262ddbadc2f7e1fa6bff3bfb7d4c28a44545255dd634ac1d485"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.259/fleet-linux-amd64"
      sha256 "99b35b78ce5ec937ba271d30dcbafa0a701af991b26b9c7e3ced9b8171713edc"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
