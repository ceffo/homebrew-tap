class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.214"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.214/fleet-darwin-arm64"
      sha256 "c35525b0ca9f54e3dbc8d3b30bca9c5e7365ed8f138c16bce2fae3f1f5cc85ea"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.214/fleet-darwin-amd64"
      sha256 "7090f2717cac6da90a5dc42e50ed3424237abc6ba680543662d8d5a1b5f806fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.214/fleet-linux-arm64"
      sha256 "fc4c64fde28323d6e3a428d8f2ef2a21be6077e97024378cc5f061bbf4b3b9a6"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.214/fleet-linux-amd64"
      sha256 "fec9c4d00a6b79b05b8df9ca10cda78f276256bd7060461f49bc7edd93719323"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
