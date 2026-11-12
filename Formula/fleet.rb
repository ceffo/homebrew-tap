class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.98"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.98/fleet-darwin-arm64"
      sha256 "384c56d673515733adf1f6d524f6700e816e8a18298427b23afb6081fc1c04ac"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.98/fleet-darwin-amd64"
      sha256 "9537f1fc403999ae5cde92d8b5a897c5df2f164c2efb2a66e2ab9a7074f9c4ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.98/fleet-linux-arm64"
      sha256 "a038bf5e21351713ba4e4ac11b2f993c3fa2de2aff006d35b55ac7767249fc3c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.98/fleet-linux-amd64"
      sha256 "531c706b9688444c3b0c6ebea14070f2c3583de2dce9361621e2facc1e7e238b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
