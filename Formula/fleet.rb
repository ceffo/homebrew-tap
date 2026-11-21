class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.381"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.381/fleet-darwin-arm64"
      sha256 "2a462bbe382316741d99f85d62cd5e1482b1837ee9e7cae9523dbf82858e9b0b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.381/fleet-darwin-amd64"
      sha256 "622f6665c76e89dc19d98d4fec4c6e9e427b8cb0d20fac0c24fd37c64984a7d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.381/fleet-linux-arm64"
      sha256 "f5da571731c52275e4e3eed3d05718e6fe48a79284ae1656391570d1f1c4723d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.381/fleet-linux-amd64"
      sha256 "f252d57b7f797a45f3e425fe6beba0192d9158e1db892cd937bedc2b4094e304"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
