class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.182"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.182/fleet-darwin-arm64"
      sha256 "0b263ed8577ce43e4f8faeade280753e48925e478c6577c93d7fa83e1c615dc0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.182/fleet-darwin-amd64"
      sha256 "29b6021eb7c0d97bb632d60c3b61858761106417c0e9d85cd0ee9e544f657c8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.182/fleet-linux-arm64"
      sha256 "5c5de6e8a7bfe810a1dc370fe55793ff0c246556fb6bc5c2184aa251b9e7b8c9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.182/fleet-linux-amd64"
      sha256 "8eb7a0ff07d5fe5f8f815710f7beee76558dfcee58ffb15b540b35277dc49ec0"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
