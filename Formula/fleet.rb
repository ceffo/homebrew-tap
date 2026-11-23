class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.392"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.392/fleet-darwin-arm64"
      sha256 "9a7b2e437c5cdd30c6c084ea33413c71d2b295a9776b4f0b33793b295299c588"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.392/fleet-darwin-amd64"
      sha256 "f145a8f8dd78e07bfc4dea242f721db002eb8bcb91c703758dbd9c79a14f92d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.392/fleet-linux-arm64"
      sha256 "b93f24ef5cadd9297cf01901d1ec1f76af4d6c3ff98ed0e8b92ae97ad8f91444"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.392/fleet-linux-amd64"
      sha256 "c47a2793f79e12a875c29e1d1dfd8acf7ea5bfc0dc99a1b3920d75af18f83354"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
