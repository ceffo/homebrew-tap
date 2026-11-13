class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.147"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.147/fleet-darwin-arm64"
      sha256 "7bf22258c034597295224ff4d90d7fdf71d11d7ce86f53d1107d0658250a3fb1"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.147/fleet-darwin-amd64"
      sha256 "e2421ad8ac223c0510856a1c8fd9e880f13627027846129e3d96bc32667f1b03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.147/fleet-linux-arm64"
      sha256 "a6d0ea5e8aa8805b6fd8b27c1ec9b935edb1f84e21b81b4b4d8483709aa16dc1"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.147/fleet-linux-amd64"
      sha256 "e3c3a44da5dfe186af3aaeaf9b6cf26ac035998893905c0c15ca81b42647468f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
