class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.318"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.318/fleet-darwin-arm64"
      sha256 "19c103d1ab9e7ec596c34fde4a044853166a638d100379284f14ac6b3cf614af"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.318/fleet-darwin-amd64"
      sha256 "33b6f66feeb2ca31fa9b4ce021f4b6e2b89cb0279d42a0a3ae9ed78963bfe51f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.318/fleet-linux-arm64"
      sha256 "5cf4d6bc06aef7076e08a42896b7499745917c51dd27d44c95e9ac8877a8d418"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.318/fleet-linux-amd64"
      sha256 "98a6654bb836e84c23624b3bd9414b63ee9241a4896f50dd60b77d3a7a375227"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
