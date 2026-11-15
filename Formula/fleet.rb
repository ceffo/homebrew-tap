class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.231"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.231/fleet-darwin-arm64"
      sha256 "07a8ff9cfc2976f2d578b5c886be3e133ee0e44ec5320610a51d449ae83b60bf"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.231/fleet-darwin-amd64"
      sha256 "a5d628939669d2858d453be87a6b1c828006e790010a62fca36f6e3d55c82be9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.231/fleet-linux-arm64"
      sha256 "7347baf054d00c74b506b71dc2ef5613809349e3c7b2a12297a939e146d6a509"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.231/fleet-linux-amd64"
      sha256 "dc46dff37978d4e071286534bf124b0e0708620c3f4c8de21ac13d28f769aeb9"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
