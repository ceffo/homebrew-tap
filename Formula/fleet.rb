class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.280"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.280/fleet-darwin-arm64"
      sha256 "5377fd6bea182d115cc87b0db99050304f3709bdd0cc0bd0cd10f8f7a8f5fbd4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.280/fleet-darwin-amd64"
      sha256 "f0780fb778a539e3f822e731d3c9d7907a236bebab048eebffd58476ea6a02b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.280/fleet-linux-arm64"
      sha256 "7a100d5a07f4d098bd75c284f5d0f6197f27430b1e5f50ff473e8b26adfd112d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.280/fleet-linux-amd64"
      sha256 "e025d73b2414688f3c950c7c85626300a32eccd6f3715980113195242d5508b7"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
