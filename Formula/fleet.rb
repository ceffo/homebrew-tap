class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.270"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.270/fleet-darwin-arm64"
      sha256 "cc7b040be1c40cc1a0347c7ec66ec4261a6c84c5e26a7202be50372028daaad2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.270/fleet-darwin-amd64"
      sha256 "6006f58128803fdd69038c9105639a6aa0a36276e64d0191945bb01cee8a7a2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.270/fleet-linux-arm64"
      sha256 "586a2a5d768fe34cd3f7a531a7101d808b0409f2650ddecd59d433a77519ae1f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.270/fleet-linux-amd64"
      sha256 "506093825d3f7fdbb8c4d297d930ba914c1d1bcad3787e19cbeff42ff112df6c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
