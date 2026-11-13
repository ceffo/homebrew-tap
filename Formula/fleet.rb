class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.137"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.137/fleet-darwin-arm64"
      sha256 "a40d4da011adcbbb6437474c8aca1f3afd5f30d35c395a5a583db9b05b7012a7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.137/fleet-darwin-amd64"
      sha256 "2a496380ec0a5fbcaa3c45659e2cd60f79fdc9c85fb70e975ce9c77696094f62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.137/fleet-linux-arm64"
      sha256 "41b4463f5b253ff6332868f3b850033361b832c9f85df665a2e5b97f129e8120"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.137/fleet-linux-amd64"
      sha256 "3fadbdca33b0be07f7c041a606fac557eb0c36b4a3fa61de55ddc36697329a20"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
