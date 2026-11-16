class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.254"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.254/fleet-darwin-arm64"
      sha256 "367fa21bd976b2828afbe1e1760540040e0f635b782f9eb050786b3e19bf09ec"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.254/fleet-darwin-amd64"
      sha256 "8f6d46c183eb1a3bcd131fbcae789fdfcba436a5cdec555dde2bf2d87b20c28b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.254/fleet-linux-arm64"
      sha256 "7fafb7453500e826bfb690593eed8e0d9dbe94c02ae42352a788278dde41874c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.254/fleet-linux-amd64"
      sha256 "6e6d96353d8531aea6125c9f6afd5a01650a9e226e73f6eae4e1fbba01518c59"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
