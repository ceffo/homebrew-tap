class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.81"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.81/fleet-darwin-arm64"
      sha256 "7a1e8fc3152fa1aa0f86fdb0e20128d09784aea358194c64bfcb8e6ff698be7f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.81/fleet-darwin-amd64"
      sha256 "983e932bf55274648e9d7d482a973b17b3f503e58762b462ebc4c21ed7d5351b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.81/fleet-linux-arm64"
      sha256 "98f5f515259b4144b37fa3a40aebffe43f4fdc086916de7979cb932d8305607d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.81/fleet-linux-amd64"
      sha256 "9b916cad8e724624976dcbf9fd1db7f0558b42f3a262147c11d231a7c9f724c4"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
