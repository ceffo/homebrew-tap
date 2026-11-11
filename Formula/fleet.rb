class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.12"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.12/fleet-darwin-arm64"
      sha256 "a68644d4ad89bcb5210bbea6513a2439cf4b93335441e0cb20312569fb14120f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.12/fleet-darwin-amd64"
      sha256 "dc26ef55921e6bab05b0a000f7bfa4b78dc1144ac2cb5da9c946f3fbc236a2d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.12/fleet-linux-arm64"
      sha256 "8d2a04e2497cebe0c2922b4e5000a6a99c9318bb1889bd62cc20d0ba9b4b2a96"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.12/fleet-linux-amd64"
      sha256 "88301a46245a09caccc935de17999fa6ca707d9f80c102bc3cb04e8610be782c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
