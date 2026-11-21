class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.328"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.328/fleet-darwin-arm64"
      sha256 "226a9d228928d9fe43aec253d84f0d5332dbc28b243f260378da03d50a084ad2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.328/fleet-darwin-amd64"
      sha256 "c7f241a42470101e78a6350287a003bbfa7ceaebf87db54f637ea978e5787dc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.328/fleet-linux-arm64"
      sha256 "646b517ac8f138ba6930dfae42112f3dfad9547d920d1651dbaa578d30ca7866"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.328/fleet-linux-amd64"
      sha256 "4696a6fdb7bf13a7c2f941bea2564b79f1aab26ec74ab4ae0d0fe0034ce84e7b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
