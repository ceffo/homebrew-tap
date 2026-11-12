class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.50"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.50/fleet-darwin-arm64"
      sha256 "4226fe1e09209aaf1573a71d7381d2bd0bf871ae24889b0648c4ae6cd442c6d1"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.50/fleet-darwin-amd64"
      sha256 "67b9c19e3877b5b4618598a9261d6f66480974fbc26e4ec00e8e6062338b3028"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.50/fleet-linux-arm64"
      sha256 "cb55541b809fedca1e8f03e25d3f3a0c85ebaff8c07ca4843964fbf8a72d24b1"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.50/fleet-linux-amd64"
      sha256 "c6bc19b597520931901d6929084ac1b3cd988a5f0288e7d21ea852b664105e8e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
