class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.411"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.411/fleet-darwin-arm64"
      sha256 "0f5ab7a95f841e0fa568fe297891400ab77e469c68c97b5353c02af1cba6fd0b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.411/fleet-darwin-amd64"
      sha256 "f08620074660b90def0b5cee3295725b3b7cc1a96222a9c8b7fc90ed46e1338d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.411/fleet-linux-arm64"
      sha256 "518409890dce7f51d5e6ab130e4e4a8bc6bb5efac212a4c5e714a3c5b5936138"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.411/fleet-linux-amd64"
      sha256 "401a1f8be53174c746aaac8041530bfacd3b410417e2714cd03957f7b843cbb4"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
