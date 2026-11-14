class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.198"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.198/fleet-darwin-arm64"
      sha256 "13d4decfa8bae958c1c1423d4b936da22c5934c30984e42513ecfd3fca17112c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.198/fleet-darwin-amd64"
      sha256 "b3db793fe5b38724681c2df4f6499973a1b7b183a7ea8414ab951989e62938e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.198/fleet-linux-arm64"
      sha256 "56bccc8f6fd964d23f997f57a9a942a070cf15c6b40df1e0c16de9bf2f961c6a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.198/fleet-linux-amd64"
      sha256 "35468a9626481188ed97e338d56806b7c95903ab2f83d45b09574d64a31a08f4"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
