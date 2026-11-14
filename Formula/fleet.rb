class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.204"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.204/fleet-darwin-arm64"
      sha256 "325e103b101d7bf08fa0caeb5e2ecf2202ed1cd0d5900e7f6475397595a11ea4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.204/fleet-darwin-amd64"
      sha256 "8e56f1e63a843eacd29cd44a5060d9f885271fdcf3654c9cda712df28ab68338"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.204/fleet-linux-arm64"
      sha256 "ed86516127dce13534807512d5ad36a7ce1dbfce3e8a2cf6222bdd643e7f8f96"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.204/fleet-linux-amd64"
      sha256 "fa262fd98896c3dc455ae65597c63f4242e71c38e33227bac097538f288f6058"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
