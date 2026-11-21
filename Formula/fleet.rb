class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.354"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.354/fleet-darwin-arm64"
      sha256 "7db6dc97554f38d7154a1dfbb526e08031dc3171cbdc7bf1084b63405942464b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.354/fleet-darwin-amd64"
      sha256 "4afcd905892758c206dab8078c2ad639006329c0bc4a060601d0aa5f87f6a909"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.354/fleet-linux-arm64"
      sha256 "4934f0db494e972666cd3eca16ac09f8404e48b448f5ce38250bd62413155327"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.354/fleet-linux-amd64"
      sha256 "867534baa241416a94b81abb824bc060c8e17098eeca83517a438a7223827bac"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
