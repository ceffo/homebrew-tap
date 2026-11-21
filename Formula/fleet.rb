class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.334"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.334/fleet-darwin-arm64"
      sha256 "7d86fab891c4ed89075f65a6ad4861871cd76e7626bbd136bdfe281a10c36e39"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.334/fleet-darwin-amd64"
      sha256 "d57c6acbfda4b91b345b6eaeef4126ae50ff59e915f5f28c70a1b4efd50fe658"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.334/fleet-linux-arm64"
      sha256 "d59e14f37e92e574e913b100406ef3feb99de55433f1c7df0e3e7ce74e11ed40"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.334/fleet-linux-amd64"
      sha256 "35ffb40bfe62968caa1041faa2ab3b71efecd2d11808ce0a26ab5ef42f6b2ca4"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
