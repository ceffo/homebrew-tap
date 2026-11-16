class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.243"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.243/fleet-darwin-arm64"
      sha256 "2cfc181fc82495a77971a1d8d8caa945b2408e658f14757d971e7d0f5a574a93"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.243/fleet-darwin-amd64"
      sha256 "769b7ee00ddc8d78e86d077f201c3815ce881b7a9d0b11a08d0c52530799dc16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.243/fleet-linux-arm64"
      sha256 "8e46aeb7521152a9e6116b91fb9a8c3a2f74050e8e80055f96d13b240aa315a5"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.243/fleet-linux-amd64"
      sha256 "3715d8945a4815f8d345385629afc2597a2293e9380d4169b820d40deb15c42d"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
