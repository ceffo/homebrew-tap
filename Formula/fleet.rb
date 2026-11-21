class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.341"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.341/fleet-darwin-arm64"
      sha256 "43da8e86313e0e22b6118f3ae0758dcf035ecac6baf2d249266dafbd718bf623"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.341/fleet-darwin-amd64"
      sha256 "e2fc13b074d2b0a656afb525f08c39dd44ca56af14d1db7a04767ee37a961890"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.341/fleet-linux-arm64"
      sha256 "841d637346bff5f63c579ad216011bfad617cda25479c4e9af20c7a90c6ba978"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.341/fleet-linux-amd64"
      sha256 "de26fa9fb3f5e458700cbadb609a13cb3cbef8dea87bf51e9be57901bf19cd5f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
