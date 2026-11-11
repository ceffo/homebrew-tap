class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.0/fleet-darwin-arm64"
      sha256 "266d879f27ea3aa9bb5746fd2447da20a041fda16cc7dbe16e898cbeb1ff6fdd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.0/fleet-darwin-amd64"
      sha256 "3fad570993f7124bc81fbb4914a0ba753912f02bebf724190598b39495da76d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.0/fleet-linux-arm64"
      sha256 "6b436dc15764705edf2ed53c32391a93c130feb4e0d187f25f671e5d98e366ef"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.0/fleet-linux-amd64"
      sha256 "88e7e86d95e1e5bc3394aebe83536c473c6e4918cb9ba166d17f67d60ff00cd3"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
