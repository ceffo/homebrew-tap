class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.377"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.377/fleet-darwin-arm64"
      sha256 "21d86b6ecc7bea555925fa2b5e24e8d63f045cae1150995b3a218c98858199bf"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.377/fleet-darwin-amd64"
      sha256 "afed95c4731e2e2239677e20e0b78bb80ddaaefb8213ead70b7f6da9d0be35da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.377/fleet-linux-arm64"
      sha256 "8f897ae829255d381c4e4531bb9a79411d978428414b8d3406cc2bc877d2e902"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.377/fleet-linux-amd64"
      sha256 "105f60649a57150774c8154ed06d472d65ebf87a84d8d07a818a0404fc21f2dc"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
