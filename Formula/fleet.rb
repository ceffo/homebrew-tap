class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.316"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.316/fleet-darwin-arm64"
      sha256 "e019a7f05989f40ef6728919fe431b5c65555ac7392173d4762ee0f1648c785d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.316/fleet-darwin-amd64"
      sha256 "bc80f79d514a975cfb767c3519d93a2508a0452054c598b99fecfcb5503ba3a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.316/fleet-linux-arm64"
      sha256 "fe8aa6d4078c3adc8ca4b945c2d0589517fac38b1f02dfe1c200b862b26d6758"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.316/fleet-linux-amd64"
      sha256 "27234a59a8d95479bb7a78bb91e8bc8165961d40cda21867957e35d24fc56f29"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
