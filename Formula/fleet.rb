class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.272"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.272/fleet-darwin-arm64"
      sha256 "616afd53b9dc8c9f2d265811316563fefe8437e605d840c5cbee54f786e94550"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.272/fleet-darwin-amd64"
      sha256 "c46528ed48f1f79d0240c98f9c0553c7b3bfe0226247e4997e853009aa853b88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.272/fleet-linux-arm64"
      sha256 "827cb2ac3eebe69ea9acd7abbca4097dacfe1f3170da544585f7020d01c0824b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.272/fleet-linux-amd64"
      sha256 "ff3fc830265535621bc55f3d604c68b08661ceac2b343f2ab99500a7f20e7a4e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
