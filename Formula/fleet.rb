class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.339"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.339/fleet-darwin-arm64"
      sha256 "af537a06a46208bf56567f6b520cda1f16e3a4f4ebbd62eaa60184b1c5646c60"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.339/fleet-darwin-amd64"
      sha256 "18037d483e872fb750aa2df61cd52bb9a04f501c4e1e939f23683c8c0ea7379e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.339/fleet-linux-arm64"
      sha256 "1ce063696ebbb7a4bf358cabe04ffafe1f88c3fd515515aee6e1bd653fc8bfdf"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.339/fleet-linux-amd64"
      sha256 "d5252e0750e6244a0d89eacae9db412156fe762f9334f3edfec93458224c8529"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
