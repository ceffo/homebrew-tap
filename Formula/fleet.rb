class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.122"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.122/fleet-darwin-arm64"
      sha256 "2510b63e9d6d4be1534a50029d47dcb8dd0da60704b08ad1ab1b61a52d3453f2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.122/fleet-darwin-amd64"
      sha256 "01c38c79b2e500f1f4f012dcf4c57fe2649961696c374d1d670e16376106913d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.122/fleet-linux-arm64"
      sha256 "42616322c3d90383551381df2e58e51e1db2bd141ecd42c9cd8e17100799070d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.122/fleet-linux-amd64"
      sha256 "0731a887abbb8bb5ecf5bb00efa2ccfc2838318efb469db15a4e90b7d45aea33"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
