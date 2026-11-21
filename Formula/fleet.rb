class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.369"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.369/fleet-darwin-arm64"
      sha256 "1a63c9664fb5f8ababd9cfe83f4a984f028e598b07ad13abf9d11a95e3905679"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.369/fleet-darwin-amd64"
      sha256 "acf23b0f545a5c6dff82271881511b6e5279cb062106f1fe0efb4e9a282bd261"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.369/fleet-linux-arm64"
      sha256 "0f706997d430776f53d9cbaef7b9625bd5c06216324d24556e868c736b3897fd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.369/fleet-linux-amd64"
      sha256 "9ea3dd8806bb742828f18ee4bc5b13cc2b49de0639e2f531e9e849685cfaebf2"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
