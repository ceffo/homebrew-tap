class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.246"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.246/fleet-darwin-arm64"
      sha256 "f98fd86cc0c138886ea7372a558abd359dcea3acfcf5c4a544608484da483af3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.246/fleet-darwin-amd64"
      sha256 "8f111efb4f55d7280a91e31289ad7d69b9e13c1b2d823ef164929a29febd3505"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.246/fleet-linux-arm64"
      sha256 "08974c3919431626054dcae319dd385ab8db27500d7225f74eb6dfccb103c1c4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.246/fleet-linux-amd64"
      sha256 "19ca70d71a6b864b4a52de21417c5ff154fb8b6b60fd2e5f1ef3728cd5ad6136"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
