class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.317"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.317/fleet-darwin-arm64"
      sha256 "3fe00b757c52960f80266bd88331a38174649e5903bd93978c0a5949dcbd5950"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.317/fleet-darwin-amd64"
      sha256 "2e3368d4657a842b9e57a9a5913871d5c9fb548d0a4c73a82f13a046663a8199"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.317/fleet-linux-arm64"
      sha256 "3a37f055acfcb50a661144081addcaed8f125c10045f8bc2fccec24c09c6900e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.317/fleet-linux-amd64"
      sha256 "cf8013b1e73e10e7b03be383ce36c93d35915dbff331ac9a9df2c10431b43d78"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
