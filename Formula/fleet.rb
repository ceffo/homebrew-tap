class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.203"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.203/fleet-darwin-arm64"
      sha256 "3c1e642b32e0c1a688186e11c124077611d0cee9747b25773d247a6a3351dee1"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.203/fleet-darwin-amd64"
      sha256 "da4d76f278e063dcf1ae748b16eb976d6917e235e93b6bbfffdc3688b8f9214f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.203/fleet-linux-arm64"
      sha256 "54d69c1cc814480d132265e35362c1e131fb5b6dd13f9c8b3da51b02064be626"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.203/fleet-linux-amd64"
      sha256 "b3607e0aa8a8b36bada9b88aa5f465290767e2ffe0477f89410a85a1182efdfc"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
