class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.129"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.129/fleet-darwin-arm64"
      sha256 "1d23de728fc2b104c3f1945cb54df365571eb49164e9cdff4cf64c8314a5f195"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.129/fleet-darwin-amd64"
      sha256 "356487eeca2857a52c8be18768c253f889b0997eaa2f81b08f512620a367b75e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.129/fleet-linux-arm64"
      sha256 "82d751e083057c2f0190db031bab8d88360fdf8768fe1d86f9ac522f50e1ba0d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.129/fleet-linux-amd64"
      sha256 "0a435d7828b67c4593819c8896ebba3c5525559b964b8c6c6b7dcb473d251075"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
