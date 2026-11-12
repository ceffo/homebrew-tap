class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.71"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.71/fleet-darwin-arm64"
      sha256 "36c0b36bf2db9ba79e2d37b0691d8ccaf85c02341364cfac08bf35824099d1fa"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.71/fleet-darwin-amd64"
      sha256 "f28f51c087ba509059d3dae85743f23b33de3024149d06c04ea57c113e419f56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.71/fleet-linux-arm64"
      sha256 "2d1239a4283265bd265fd13be0845b199853fbe4ab297c096722e95b45bf27ba"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.71/fleet-linux-amd64"
      sha256 "3897e5012845b7b87e31c9e1d7399d43d3922632394890d230b3a686eda203f5"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
