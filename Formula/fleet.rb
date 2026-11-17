class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.281"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.281/fleet-darwin-arm64"
      sha256 "180f26b9b3df79b44ed6c362f2e1e21991e50b040f0c3ea597cf70ad92cff1f9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.281/fleet-darwin-amd64"
      sha256 "dff300885cd6c51551870599ae9a9e470b944d70597e033f341156b5d8e5c74a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.281/fleet-linux-arm64"
      sha256 "0dd667d048ad1fae5679c4cf9609ca06837cdd80eb64433bbd5b3fe61e6cd495"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.281/fleet-linux-amd64"
      sha256 "1edf576a45b5376622f62da27639a9b261bc87d280627139dc85dd64c2a534dd"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
