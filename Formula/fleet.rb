class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.173"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.173/fleet-darwin-arm64"
      sha256 "d53eb8b74e940147ac62f59b5f58b2cf2e6bb36b923074f789030eef9075cdab"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.173/fleet-darwin-amd64"
      sha256 "35c50deef3713a5b80d0bd41f81f84e044cd84ae33bfeb4662794542ff4cba4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.173/fleet-linux-arm64"
      sha256 "be130f5cddc0ca30af20891f0a48329ad98cf09df733eb70a1454c82434f4234"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.173/fleet-linux-amd64"
      sha256 "0026d6d0af81bab559cf4d196cb5bf20997eca293100f4c4c3a22d668c8c176a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
