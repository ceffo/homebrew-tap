class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.78"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.78/fleet-darwin-arm64"
      sha256 "ed962c58e9880eaa91f59fe57613489c3ef468e4a6d3062b7cfb3e63d28233ab"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.78/fleet-darwin-amd64"
      sha256 "4627adc239f19e780c59b5241b339f0413d30fb794739622ca9f625982fc979f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.78/fleet-linux-arm64"
      sha256 "0cb3a5f6f630dff0a20d752830a29ec5ae3e4d01b7559a77f7c7a7b530a35e38"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.78/fleet-linux-amd64"
      sha256 "3123a4832450c17de4d03e52a3c7a68cd4c92460e4727e90b1eaca7f1ee014f4"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
