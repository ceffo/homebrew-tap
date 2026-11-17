class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.284"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.284/fleet-darwin-arm64"
      sha256 "f0de4e4b0408623b8fb6f0b7d5653a0179cd5dc12799a07b9895a5650a3e5d91"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.284/fleet-darwin-amd64"
      sha256 "d513a0c4cfb14ff8b62bbf681dc17525cb9ea56643e28b6fc8b22cd965f72c80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.284/fleet-linux-arm64"
      sha256 "912150e0d99d53a010b58cbda32bbfec4c5a11a2233c8106db0f9dc5cf868674"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.284/fleet-linux-amd64"
      sha256 "c5216360719e9d11542b65145e77952c044d52fde17fcba1c5d0e034ba9c61e6"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
