class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.187"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.187/fleet-darwin-arm64"
      sha256 "108b23ddaf1ebc36246f6d1adb4c241aa626929a39c605dc80552ca35135179d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.187/fleet-darwin-amd64"
      sha256 "9f05c0eaa5b86d8a552b681007f8606df1ce04f6bdd50b4987767423ca3f6694"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.187/fleet-linux-arm64"
      sha256 "122fb6cfe001775ca24187945089c60b099d827d8a83b4a6193719e0d6523d99"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.187/fleet-linux-amd64"
      sha256 "77d9a2d180061ed152e46873a56c72c2db4056dbf178ba5d54191914ef409b75"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
