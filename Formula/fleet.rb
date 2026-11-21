class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.375"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.375/fleet-darwin-arm64"
      sha256 "104a861156860df7ef92aded6efce28e7bf96a147147caf82552432bd761902b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.375/fleet-darwin-amd64"
      sha256 "6408febb50cbb4dbf9637ce1417ad8fbb2cc45076255209b7c35c24e25c341bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.375/fleet-linux-arm64"
      sha256 "bb28460d7a093c0904a7ea55c963b789545633baa1a6fc524558654272153520"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.375/fleet-linux-amd64"
      sha256 "66d18b097ab25530431cfe39ab1f6dcfa830cbf66ca9da18cb9103e402efaf0a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
