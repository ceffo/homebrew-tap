class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.150"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.150/fleet-darwin-arm64"
      sha256 "e1ad3563c4f4f93b3bb7fb164ea36d04abc0981bb37c72864e632222583e4b80"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.150/fleet-darwin-amd64"
      sha256 "f2cbafc0ee125bb6f05aab0f4886bc145c70cab2c1a1e066260e28bf593a813c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.150/fleet-linux-arm64"
      sha256 "619c721ac63a0b42be92cdc863cfb7b4c854f26e808c576ae41362dae7b88b08"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.150/fleet-linux-amd64"
      sha256 "e0e3727e0f9aea418d5452a5dd4ddc15ca98e8c279e04a699ca93d6bc1909cb3"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
