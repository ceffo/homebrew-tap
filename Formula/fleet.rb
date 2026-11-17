class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.298"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.298/fleet-darwin-arm64"
      sha256 "b8980c18d117bf7d7f3158f3ae7f9f4d6e661a238bed7b3c1205fc2756e6b2b2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.298/fleet-darwin-amd64"
      sha256 "38a7f357d9e22389275eabe600ce8b35523763ee8a08f35f52c0f13b93e604c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.298/fleet-linux-arm64"
      sha256 "445940cb5baeae73a4694118bd525bf6105e6f18f292658c732f31e339c4cb19"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.298/fleet-linux-amd64"
      sha256 "3310707538142c5ce29187d2cb12b064ca01cb2e1e573d00fe6f96ac818a0740"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
