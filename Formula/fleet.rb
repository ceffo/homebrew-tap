class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.112"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.112/fleet-darwin-arm64"
      sha256 "d32cd65225077150a3d3381e76dec9702872a9e6f9af450c8b7b6c111e72b47e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.112/fleet-darwin-amd64"
      sha256 "3fb7a3fb16d97d2bfbc4013cde6eb4b332ec2e8734becb4a1e9a24cb34a146b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.112/fleet-linux-arm64"
      sha256 "de1b277a9469358009f4aaaebf3c7aba290c2d56864f56a273293339d0e965cd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.112/fleet-linux-amd64"
      sha256 "03db67ec86cb47b97e856a5861bc296bd06f9c877a32803b038786be784bc490"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
