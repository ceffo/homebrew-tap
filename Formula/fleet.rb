class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.89"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.89/fleet-darwin-arm64"
      sha256 "bebee7e8a76a5c3644b336fb9a4a21d409b5f6bbf86f329ca2a3572736c17e99"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.89/fleet-darwin-amd64"
      sha256 "cfe0ff566bd5ca45531ff9b1ac6cc7f51193f545270ae4af46bb044b7a6e2b5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.89/fleet-linux-arm64"
      sha256 "851c2ca3f9bb3e28e0a06faf375843ae7c53ec8bc3b33a23888edfe4f2ce97b2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.89/fleet-linux-amd64"
      sha256 "d20b2301252160b82c968740f492f4f5d414425b0c47a0311f6b633c5120d376"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
