class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.335"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.335/fleet-darwin-arm64"
      sha256 "7af6477c04f2fceac5841b8e96c5af65ce0bcfcaa75d04c6fd708efe76faf580"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.335/fleet-darwin-amd64"
      sha256 "098f9861317ecf779f8a45600118fddecdd5113e5fb0338f4c09e67710dd38d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.335/fleet-linux-arm64"
      sha256 "f22276301c1994e596a8f9e9f53d6be3806294d25c81747ae515630cc16f0973"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.335/fleet-linux-amd64"
      sha256 "df58f838a9669eb3888d5715cda71f348daf016cdc29453b7d9bcff6385d8220"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
