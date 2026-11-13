class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.143"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.143/fleet-darwin-arm64"
      sha256 "820bfef7f4b45b3c0ab7748b662a2f8df8212078912ce0ee1d45bbc16ba5e636"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.143/fleet-darwin-amd64"
      sha256 "acc5b71bed164a7e857a275029baba03e53cb746d4a82bc99a1cafcb86bddbcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.143/fleet-linux-arm64"
      sha256 "83413e70a630eb9620ae71e4e320b45723b476e6b5e189df94616c1a712c3d2e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.143/fleet-linux-amd64"
      sha256 "fa7445a0723fcdbec8492b2aa8369603d07889247587122d07d1370eb921546b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
