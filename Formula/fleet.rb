class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.181"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.181/fleet-darwin-arm64"
      sha256 "cede5b8f2ed52ad96f5e878483f8ee28558946185d45804e1a171e8c56c9c09c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.181/fleet-darwin-amd64"
      sha256 "8f462563f0ae14e0a21f633bcf2511451a8230450ce36f9d8a4ccf97014a4704"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.181/fleet-linux-arm64"
      sha256 "8a7c732b6f9a44bb5b2bdfce9a57cc89e54a858a081fcc3d33fbf3be8e036a52"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.181/fleet-linux-amd64"
      sha256 "73b6dcd18f411c40e4c30e8c3e5264631edc071316f1f26558f4e6e6693a635b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
