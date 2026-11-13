class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.142"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.142/fleet-darwin-arm64"
      sha256 "a778584b4cb3900529d9025d800c5546f8bdd5c14ca45fca59c9305b401a3f38"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.142/fleet-darwin-amd64"
      sha256 "124c7ac4fefa0854f90a28ad22e6e3fd14d34346c97a6ce2513e6b81bc9773ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.142/fleet-linux-arm64"
      sha256 "6da5eac3da50a42c9ab5e719f508b747e3232b2eac02b95bcf06330e2f80f65b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.142/fleet-linux-amd64"
      sha256 "bbf749319fa3c8d1aef3ad85fa356c50bb1a0795d99847155453d4767095dda3"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
