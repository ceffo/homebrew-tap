class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.387"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.387/fleet-darwin-arm64"
      sha256 "4353992af22f741a64647864f97f3cf2753e8465d311c801249bb408bbb0cfb4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.387/fleet-darwin-amd64"
      sha256 "a712586d41e8f4c0a06037c01039ad5b3e4706eadab27f5730a6c1e8984514f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.387/fleet-linux-arm64"
      sha256 "61460c7710cfe34af0cec3f26a4dffb07232a442c001c002209b98b5883a7e86"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.387/fleet-linux-amd64"
      sha256 "1523e9ca0179e389656b5cca0a105289d4bec2260a2e6ad9afdf81135f3b6062"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
