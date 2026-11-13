class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.141"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.141/fleet-darwin-arm64"
      sha256 "cd29d166185b8b2db5b63d27cd829ca1fc6c2c00881751ec3a3a6c0eac3ed055"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.141/fleet-darwin-amd64"
      sha256 "7da6970f636ea8846ba5914417a99f6a92b68615ab81fe11ceff867ad02422f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.141/fleet-linux-arm64"
      sha256 "374c08f78b7f8254ecad321095a94de37ce8fae2123999552f6c0eae90ed7238"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.141/fleet-linux-amd64"
      sha256 "cd48ce40a95710a08f64864703a6f013eac6477de9ae43c696f0476b8486157a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
