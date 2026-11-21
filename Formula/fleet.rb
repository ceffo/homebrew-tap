class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.357"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.357/fleet-darwin-arm64"
      sha256 "ac6baa3b33a2dd00e0ef1eaa001b5bd8aecf9f27205b2e03138836f2f96f3c3c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.357/fleet-darwin-amd64"
      sha256 "acfc79f12fbdd6128f9d2ae152da2a8e7c22696709b2960fbdc6076dd44cd6b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.357/fleet-linux-arm64"
      sha256 "e0023ec4f1701081eb26c1ad58463816285b36705426afa415a1ef9f43e95ed7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.357/fleet-linux-amd64"
      sha256 "106cdd1af84eca3e9eac037142b6d616c11530fd74bcdb883d1fceb92a09bb94"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
