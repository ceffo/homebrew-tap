class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.2/fleet-darwin-arm64"
      sha256 "99f674669d65873f5ad5ce3d0ac2bc2cacac9ae2cde0de96e80f701549407a16"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.2/fleet-darwin-amd64"
      sha256 "6002654a91590bca0fd5e6ae53e410bbf0a1a606d88b0f8e9692a13d9a3922ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.2/fleet-linux-arm64"
      sha256 "d9eee0341e6590a7a718935b05582a1d54656d83edb597a950c880f9fca71242"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.2/fleet-linux-amd64"
      sha256 "7e5b2e286eab363423052dc2f4adc135249fd5bda0d2ea87f63c66b2175efca8"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
