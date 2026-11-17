class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.290"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.290/fleet-darwin-arm64"
      sha256 "5e12b6f8c46f1636cc1c2f328928311bba4e6dcd7d24b22b7c4b12a0339fd52a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.290/fleet-darwin-amd64"
      sha256 "cb18239d95cc34d29331b0d7b5106d78433979554cb2486098c2e758491c273b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.290/fleet-linux-arm64"
      sha256 "77db37aeed3ecfa3b3acf84cc33c4b039d08472043d15652eb0dc6aa924eb57b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.290/fleet-linux-amd64"
      sha256 "276a102fa1c8226ff36be952a6aa044680fa33b723fe79d867d86dd23aea7506"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
