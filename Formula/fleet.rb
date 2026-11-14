class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.155"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.155/fleet-darwin-arm64"
      sha256 "1bfed78d0400022622cf71fca4ce9a9902d9d41c0ad1c2f85fd9e4f4712a54c9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.155/fleet-darwin-amd64"
      sha256 "59c26f096c15ea85fa8fd4bb48f4919720b9193fa9d5e3da168ebbaa5200e8c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.155/fleet-linux-arm64"
      sha256 "6e2261d3bac602da9778e09625b7587c3202d400bb87db0e4c44e11e7174fe1d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.155/fleet-linux-amd64"
      sha256 "3d81c97299fdd4a183c43e63f82ec61cfcbc61b15d31a2f12e779678ea9fb6f4"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
