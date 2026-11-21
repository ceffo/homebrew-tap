class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.350"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.350/fleet-darwin-arm64"
      sha256 "528601b6f352a601e9907124fb64cb891929c99105131ea841d26550a7300737"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.350/fleet-darwin-amd64"
      sha256 "6feb2f1c1304ad5db84b7c894f1c74c0980e52f27fe5475a41544b2513e33b6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.350/fleet-linux-arm64"
      sha256 "e5e8f58dbdce763c8aebbd93c8c9ccb6e6d1203c958112894812388075655b88"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.350/fleet-linux-amd64"
      sha256 "30169859d98912d6aa5f79d6d1f6fd06cb03b8edd55ded3a8855dc32ba00813c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
