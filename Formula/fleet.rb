class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.79"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.79/fleet-darwin-arm64"
      sha256 "539876d2c7f95fc7b47288c047f33a34d46131ae9bf74ced528d413f28682762"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.79/fleet-darwin-amd64"
      sha256 "4d6c0b097a9c9b8770143fad258cdc8573110240e41d0fa3de4b1da50abd0fa8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.79/fleet-linux-arm64"
      sha256 "93c20778a103c462d490bc75dbca113ab61954b3ebad96aa26aa6b1c90e2ae79"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.79/fleet-linux-amd64"
      sha256 "ee2c3056a61054c6a9c68ac1e2af63cbf98393cb6a13e167db2ddcf1f46b9a36"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
