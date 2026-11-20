class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.314"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.314/fleet-darwin-arm64"
      sha256 "029cf1b0631721b1eec3ee12f7b85ee8044e580e82f13e7ad9abb724d910f43c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.314/fleet-darwin-amd64"
      sha256 "37a4cd783e161b34a07a957a08314aff7627537c5e47bd33dfbc8a4e9ffc6a63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.314/fleet-linux-arm64"
      sha256 "947bbdd72b0f4bd72816718957cbb4afcd993c9dce3763ad45a2d233eed49185"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.314/fleet-linux-amd64"
      sha256 "88400dc40ca685b9af2b1f5b322213ce497fdf14dbdce574aeec15dfe6635e85"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
