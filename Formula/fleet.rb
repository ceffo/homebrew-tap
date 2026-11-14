class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.157"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.157/fleet-darwin-arm64"
      sha256 "c47c982516a064192fc2185bb7c60288a35889595da5dcb6f58cc7d2dbc7b39c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.157/fleet-darwin-amd64"
      sha256 "c977e220d12ebd1cf682e5429613fc21f7096db5b15b40d4954c14fafe84166b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.157/fleet-linux-arm64"
      sha256 "e54eeb30400889efbead74cdd8aea13c50a4005fd203db4d4883abf38e46cd42"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.157/fleet-linux-amd64"
      sha256 "fcba1700f96c852ed3883767e190bfe97e622ed7dac74857c92d47851cfcdd00"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
