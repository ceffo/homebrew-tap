class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.127"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.127/fleet-darwin-arm64"
      sha256 "3b5b72c89239729fdb92a4a708bbcbb1a0b3bffc488d5721a4f62a6249f1e94f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.127/fleet-darwin-amd64"
      sha256 "f02222e7c73b25a4abe0500cf1e430134bee73ac92d8ff7391e60c24a605ab05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.127/fleet-linux-arm64"
      sha256 "22d5019debd7f6c6f54c098f0893daf19562d2e1343b2ebfdf6d482e13972f3f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.127/fleet-linux-amd64"
      sha256 "5bac2c7f4ca66f0fde0060c718e3303b7762ce76c6e9a5d20ea2add8881fd952"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
