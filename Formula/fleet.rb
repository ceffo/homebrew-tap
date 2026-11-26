class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.407"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.407/fleet-darwin-arm64"
      sha256 "fbff01d9856554e3daff3fd06e4fbca65af9ba4b1e27be80e6e74ed8196200f8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.407/fleet-darwin-amd64"
      sha256 "fdd230ef970c8ed316545ac21e85f56e38f988b018f3a02c68a6284102a7aebf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.407/fleet-linux-arm64"
      sha256 "5cce5b1a3d9fe42f8ca1d6d06fe4dc21c336ec5d2325ee0dab9cc0297239a34b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.407/fleet-linux-amd64"
      sha256 "69a7dd6786faee7e48d1fa956c68f780a70605714ed5823e487dc003eb041b40"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
