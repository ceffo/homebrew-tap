class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.80"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.80/fleet-darwin-arm64"
      sha256 "0bf06d962c22e6e6ea0731930ca2574e6a24ccdef5ecd2f72a28a06b0ac04d6c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.80/fleet-darwin-amd64"
      sha256 "ec8b5bab07c1e96d90717ed428e39d4e12a1f7b1e7a19dae9071cd6f0027d394"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.80/fleet-linux-arm64"
      sha256 "1ac8fe56cfa49c34357bba99289e28cde3db324320b0e534e6e996b1252b6105"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.80/fleet-linux-amd64"
      sha256 "eee7d0b7c8ffc408577bb8869b28e9bfa2f3fe008cd5e960a7781580354d21bd"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
