class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.263"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.263/fleet-darwin-arm64"
      sha256 "b81d72d1875eb1d75d0270bf2b72c0ee491ee87c53d68c947082dfc23ec70b0f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.263/fleet-darwin-amd64"
      sha256 "e687c70763b642fdcdb35ee990c1fb6ff157e1012b94b346ea09cf68caa4ea69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.263/fleet-linux-arm64"
      sha256 "ec62f8a4fa5543f4bf59ee348fe4f8e6a3c884278f580fcb9fd6eafe86dfc8e5"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.263/fleet-linux-amd64"
      sha256 "a1f30143d53f579f591b74e3403ba31e1639ad3fb115fa0d06a17478ad86b82b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
