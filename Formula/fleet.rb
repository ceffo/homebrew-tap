class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.249"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.249/fleet-darwin-arm64"
      sha256 "7e01c883ae16e8b1f7e1dd334f74be59e677298dc0d7009f3119007f8a887eba"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.249/fleet-darwin-amd64"
      sha256 "ded5e47f8428fda279cc22512cf60ba8301780368a820f561897e2b208cbf542"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.249/fleet-linux-arm64"
      sha256 "560634da8f95625fa8f88a4d121247937c968b7771032b9f5e5ad6cd59b8b09e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.249/fleet-linux-amd64"
      sha256 "44d14ebb4a997166429bb4f609fd841c2149336e7f4ce8bc97063c037b68fa5e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
