class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.315"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.315/fleet-darwin-arm64"
      sha256 "3008ff2435bdc4336eb09022a50e5553602b1b066bb2a481850e9b915a1fe434"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.315/fleet-darwin-amd64"
      sha256 "de533d4d56ddf917e2ab20fe02a116afe5cf5fd097866d4ea311a0e1897f6316"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.315/fleet-linux-arm64"
      sha256 "86f88ab56e370d94956b2b8d02180e0c2edc3bf0718907d9a2d6460056cec260"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.315/fleet-linux-amd64"
      sha256 "d12ef50334e750c4d23e3beb912d3f4377f39b34c25c18e8da1ae5ab4029d7d1"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
