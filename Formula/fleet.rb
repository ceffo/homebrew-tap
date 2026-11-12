class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.87"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.87/fleet-darwin-arm64"
      sha256 "5bfa066e045a2d9446fe734d95b7f5394a5c12d540eeb7a490ef96ec84e9d1d5"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.87/fleet-darwin-amd64"
      sha256 "cb311730c9c6d56a3bb08ecff0cd10fbb4671644c614fc7f7dff4591019143c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.87/fleet-linux-arm64"
      sha256 "a7250adde0c0c3c391c5b109a959013386ec1a810dc731ba3c8f8f5c1448edd0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.87/fleet-linux-amd64"
      sha256 "6ff7d76664ed2dce46bf8d5de55f4d203c525eb091d94f45b49b5f91cca28be6"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
