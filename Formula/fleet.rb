class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.275"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.275/fleet-darwin-arm64"
      sha256 "7ab19930f543d4aba894964ce03e2d8d2d2bab0ea0f37c611723b65de8a97755"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.275/fleet-darwin-amd64"
      sha256 "8d993cf7321e54338880165828fe81e9bc86fc674ea9d4f242571260232cf6a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.275/fleet-linux-arm64"
      sha256 "35872c5929b20585efad932053fa22c611d50691e9a0d444ee2d46159c6f6336"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.275/fleet-linux-amd64"
      sha256 "7514504f6ba6e0de49e25c15898eccce43ef8a04e8fe1681c48d2e2b4a3c7f64"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
