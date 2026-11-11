class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.8"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.8/fleet-darwin-arm64"
      sha256 "2aabc65b4398dd3fe32112da4f1df5cedab7a12208c9888679b0334deb3c4c88"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.8/fleet-darwin-amd64"
      sha256 "904d8945035adf087213aa75e355797933697cf1df563803e4298a9522aaf5ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.8/fleet-linux-arm64"
      sha256 "fd4ceb3831ea7f09881ea8c6fe98dd1fd336cb19388efb398a7c9bc7b17d9755"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.8/fleet-linux-amd64"
      sha256 "646733605374327d14af220cc694e3e1da5947d5c8824d663bec8878f775d548"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
