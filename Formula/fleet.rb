class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.195"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.195/fleet-darwin-arm64"
      sha256 "9e65e3165a1a315af4d0c333f7461c93b08600429b06758baaa049ff6fde90cb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.195/fleet-darwin-amd64"
      sha256 "560ed89f8569c6c25aebf59be207344edfa96dd44226bff2f7b4da6f693f402f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.195/fleet-linux-arm64"
      sha256 "deb391d07a397ce13012aad9e91fec9063fdc27dbc448da896b0499254a573ef"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.195/fleet-linux-amd64"
      sha256 "d4952171fce9a89494d1f8787d150ec2b5741d571a8806f3f721d3767fa9081e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
