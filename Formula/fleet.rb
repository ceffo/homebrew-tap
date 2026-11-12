class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.120"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.120/fleet-darwin-arm64"
      sha256 "cb55c2e07826ab82e36d41650cfddd92eb4799c6ef85be0eccf963ffd7331d90"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.120/fleet-darwin-amd64"
      sha256 "691e0f6a2c1dd8e463238c41c9324fcacf6ed2d8bffeff318d92221570da0118"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.120/fleet-linux-arm64"
      sha256 "298bb065a98c97a7acc4403276454972dce1822b602252cfa76898f7c6550424"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.120/fleet-linux-amd64"
      sha256 "2d17d454dc302ddac88ad9d06e1286ba5ab247f74701864337bd532a2fb67f5f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
