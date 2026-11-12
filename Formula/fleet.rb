class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.45"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.45/fleet-darwin-arm64"
      sha256 "41312feec6111fb6d3c2d1793fdaffac9928693ea1e5cf497e8afe7754053075"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.45/fleet-darwin-amd64"
      sha256 "04fa560ef2a866b8c8a530c0898e298400c6cf8a8130d5ca5166eaf3212d5893"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.45/fleet-linux-arm64"
      sha256 "af5fcaea6623303f6a0aa06ada8c4fb620d6fd6b5cbf0eaab03092c0e0f66c88"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.45/fleet-linux-amd64"
      sha256 "ab04c7e91ef8d2146bdc35a5cdb631192e9a2c2c4bc6adc3bd315c4d3cfeffb6"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
