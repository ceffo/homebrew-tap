class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.348"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.348/fleet-darwin-arm64"
      sha256 "a3d0a41412fecbe56c2a7a4c0a5864cf93a92e1cd894b1a6d9189383f79b6db4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.348/fleet-darwin-amd64"
      sha256 "6edc3f5b9f6a47b3568ac4333caa06944c1f711e789720e08352988fb2703b76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.348/fleet-linux-arm64"
      sha256 "2f40c0ea702b1ae7bd170788d1d623c13f8eac149b72d8d269ab1b914bca59ec"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.348/fleet-linux-amd64"
      sha256 "ad16e67bc1dbc6c33502566ce279a23f4284171e2026135f08b0beea5164e809"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
