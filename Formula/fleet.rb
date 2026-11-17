class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.261"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.261/fleet-darwin-arm64"
      sha256 "93a7a2688e7fd71a13113253e4b519805da451c34250a8e05047d5dd46eec7d8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.261/fleet-darwin-amd64"
      sha256 "21b0db84a4db0791d72788414e2596c3fdf2731215f13a898af17a6747a02a21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.261/fleet-linux-arm64"
      sha256 "89701d5951fd5acaea91986075cdd66150a393b78ba8857c1a56586db1e7d7e4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.261/fleet-linux-amd64"
      sha256 "35d64d75abd56d8a289445c326bead8b9c6936f3f616ecba929d8b28a03e4d0a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
