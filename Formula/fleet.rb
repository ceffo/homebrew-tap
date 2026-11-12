class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.124"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.124/fleet-darwin-arm64"
      sha256 "7f75aaf100d270bc9e6f41d84361b549c40f9f365b946218100d69852215bdbb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.124/fleet-darwin-amd64"
      sha256 "245ec1ac14c5a3a14f113781d0b6f02a242984db1fd8eebe936a14c986cb462e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.124/fleet-linux-arm64"
      sha256 "9d83f071364db5b448ab3eefc84bb7e8a4e8f2768e8750c88264bd06aebe7f18"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.124/fleet-linux-amd64"
      sha256 "e3906c5bccfe044d9ea093291c32f5a1adeb3935f8cdcbf9ac1d6cf9f460aaa0"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
