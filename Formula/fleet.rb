class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.277"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.277/fleet-darwin-arm64"
      sha256 "f77750c2bb2bf1e1735e414c09ae635aa12956cdccc07c3994189dd0b0b98242"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.277/fleet-darwin-amd64"
      sha256 "16099945552ee575f6ae7880ff28a23d183bd3ad6ea5e209853c0ce11ab69c46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.277/fleet-linux-arm64"
      sha256 "93313ab03391e37c7c697e6bc969b7040dd60467dfcdd7df2328ce42eaff6ffd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.277/fleet-linux-amd64"
      sha256 "3662a7d0ff1e12bdac014d75ff4ba795af79b871217250e65e34611f5f4c9edc"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
