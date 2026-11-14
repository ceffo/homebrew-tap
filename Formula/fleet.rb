class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.207"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.207/fleet-darwin-arm64"
      sha256 "0b4113b972f937ace0a40aed8d5f17f6068aa755d7ffcdd5f358ad2d949fa971"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.207/fleet-darwin-amd64"
      sha256 "7edbe20ebb0c12156cd26e941a9b63c3bd4e5500302fb52f13889c9c60be2932"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.207/fleet-linux-arm64"
      sha256 "0112fd9edd1d898301d96f05ad8fa704d8d395b34826b77cfe7e74cdabdef0a5"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.207/fleet-linux-amd64"
      sha256 "533b29e8d864f0be432091842a243c2d3491f112639e8a0ffc5f9b6d9576b11b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
