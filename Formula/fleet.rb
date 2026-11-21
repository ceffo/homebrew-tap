class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.344"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.344/fleet-darwin-arm64"
      sha256 "4fa45ab43c70efdddf2d7a3036a3acb9312d938741f2b2ddb2cbe99d0dcf7538"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.344/fleet-darwin-amd64"
      sha256 "fb66f8eb02b8962ce83cae37b145204403dba27724d0c9cb694478b0195423f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.344/fleet-linux-arm64"
      sha256 "9445445f92386133c41f1a29bbc8758a7ea7834112b58b5f1f2ff86a052c41af"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.344/fleet-linux-amd64"
      sha256 "bc2f4657022ac020deb3aa7527d47c5f67761b5060d6822100fcae56658e9a6c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
