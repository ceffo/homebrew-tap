class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.196"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.196/fleet-darwin-arm64"
      sha256 "36f038b890117a91bf5387a35fe84eb1fa93bd82c89a945bd9899c63669a3285"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.196/fleet-darwin-amd64"
      sha256 "833737337e4ac69ecef26f2fc70534e3cfaf8567e333b07d9e2b86bdd212a861"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.196/fleet-linux-arm64"
      sha256 "404d9e0e487fb85521f5502170c485c494c4989d51ec94a62f8ae4dd983cfa41"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.196/fleet-linux-amd64"
      sha256 "068d183add65c4d4327be976bccdc00f0db7f8f9f338cc57376fb29fa0ca3773"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
