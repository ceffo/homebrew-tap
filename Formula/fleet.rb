class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.171"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.171/fleet-darwin-arm64"
      sha256 "97f57d66dd25778c431eeb82506d1cf7134171ccad4ae4bb9b20555554ab60f4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.171/fleet-darwin-amd64"
      sha256 "3d738e6dde513253312863079ed1a2210ce4f4ff3580089a454fdf5851cc787c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.171/fleet-linux-arm64"
      sha256 "98b145cc7d9bf2d4045cc740d14e40700addc425ca911cf46c9b0ec4c53705ea"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.171/fleet-linux-amd64"
      sha256 "6423722c8582394111d77502bf81c6421bc88bf0c0c25476531c04fad42a3e5f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
