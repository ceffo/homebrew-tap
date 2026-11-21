class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.362"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.362/fleet-darwin-arm64"
      sha256 "0c7649be21ba05bb0fee3fd7e4c5990dc801b4b7ccc5fbd175c38758a411cc24"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.362/fleet-darwin-amd64"
      sha256 "40e0456b12e9f6cf5feda881a5d5f0df585addade8f2172cd93b2a1617e0ecb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.362/fleet-linux-arm64"
      sha256 "5e9a226fc34bb461dd654702596786848ae921e290d62079d352c6d8c2da8362"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.362/fleet-linux-amd64"
      sha256 "e5f4a7924effb627c33fdaef38eb9d1b1e1e52384f8512f6d605ee1822604246"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
