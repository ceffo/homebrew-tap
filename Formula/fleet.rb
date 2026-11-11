class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.4/fleet-darwin-arm64"
      sha256 "b0595572d7e52a00ceaa04ed94f809dd4949024a556413167e95672291d46ca1"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.4/fleet-darwin-amd64"
      sha256 "3df27bcbd2cfcce46b5065a58958f766ad7ef6c9f10a01eb7f3949500e4e79d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.4/fleet-linux-arm64"
      sha256 "9527cdeb9cc3e3eed7474b374a5fb5003403dab7d2d4751ee944a21ce3bc0cce"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.4/fleet-linux-amd64"
      sha256 "caf010d8bfef46245cd968d5c89a7621f8d960fd47f0c1f26003c6f7fcd740bc"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
