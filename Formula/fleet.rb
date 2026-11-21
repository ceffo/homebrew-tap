class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.353"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.353/fleet-darwin-arm64"
      sha256 "874c74ea5631f467c847bbe61db30f168d6605eb37e1317ab1c32b4937d2527a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.353/fleet-darwin-amd64"
      sha256 "1223ac20737eeaf7fb7dd81a794e7d34c145ad07bd4f7b998bd81de28ec5f8af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.353/fleet-linux-arm64"
      sha256 "e7650d9cecdd7dd1274f471f76a27f725c7218ff20513c9b38a5c32ab339b714"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.353/fleet-linux-amd64"
      sha256 "6d616d36e35052200e431b1dcba0d02e0bb6ce63986336df0f6c14a488da056f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
