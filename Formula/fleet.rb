class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.206"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.206/fleet-darwin-arm64"
      sha256 "8947a66b0f9a54c7b52c1dbc6e43709fff40374e50b924c13b3389069ce7dac3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.206/fleet-darwin-amd64"
      sha256 "2a91b451b62f2fe9b7fa3f2f15432eb33cdb133ee619c6b6c4c2e3997916622d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.206/fleet-linux-arm64"
      sha256 "98d4b2bb26a976dfabcf09be519c4776824e4d17663c6777649d2852929821b4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.206/fleet-linux-amd64"
      sha256 "4e6610e9fc1ec878f491467373bc4311137a07192bbcb540b8c18f58ed9c2413"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
