class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.103"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.103/fleet-darwin-arm64"
      sha256 "17ce8c0224cd3bd4ddff892017155b4755f75e021d9a50ed2e0e42a1085c0c6b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.103/fleet-darwin-amd64"
      sha256 "e4757a98b44bdc8ccdb7896407d023b09bd3279b9d58567ce59f33a39270f7bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.103/fleet-linux-arm64"
      sha256 "47e58f0cf4851978fdfd0ac4138ee368e64387c331e69534c540cb5c81b167e5"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.103/fleet-linux-amd64"
      sha256 "0e0b011d89cf04a2887c1afd870bf8fe447b01817fee919d43174c9d2c5b588d"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
