class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.211"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.211/fleet-darwin-arm64"
      sha256 "5507bb28ab708064b2b64aad9907c100e7a84c740498c470adc0913bd341ed90"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.211/fleet-darwin-amd64"
      sha256 "a3b7cce86a1f511dea80a481804165bb7c1b54c041bb6ae1e1e16174de02b57b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.211/fleet-linux-arm64"
      sha256 "e42b80221f4508837c7f8af89ad32f76e58c2c9d664e075c940677215f3950b8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.211/fleet-linux-amd64"
      sha256 "407ff60b2fae4da589735d61b7f387993ab3e8be6b2301d6e63e8da7fc6dd911"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
