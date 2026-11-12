class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.111"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.111/fleet-darwin-arm64"
      sha256 "5efc9cc6e53c7f27cd4aa9c1176f236fa51408529373513c8204407e9b55eeb0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.111/fleet-darwin-amd64"
      sha256 "3eeac6c7887196dde122390cb57645cfd11d9c45a5980dea8c04ae9be552f649"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.111/fleet-linux-arm64"
      sha256 "9a285372bdc33e58eeca1f95cef03f77b8d7d6f6244abd13c3541f4b0182a826"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.111/fleet-linux-amd64"
      sha256 "219530a2e0cb3b0c8e1fbcf36c4bf4916a553d5df714bf84e3b0a1aae4b72e1c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
