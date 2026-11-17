class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.292"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.292/fleet-darwin-arm64"
      sha256 "ca91631536e564e0f12271d1d257937a41d161a693e15162df2e75f95c68da3e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.292/fleet-darwin-amd64"
      sha256 "1b39ec452c72832b3797770e3a153936107fa4386a94ab40d1d1c23453ab765f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.292/fleet-linux-arm64"
      sha256 "7c8ea308f21563d0a6e71f1d127f982b328e8043b871b9df013b5dab1ae32971"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.292/fleet-linux-amd64"
      sha256 "2c9845ddc76d78214dbdcd7cec112a29a1c70d3b3f2851bb587f34dc935f0a87"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
