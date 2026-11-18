class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.312"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.312/fleet-darwin-arm64"
      sha256 "5311287a29175691509110d8f65576bd65d6bedf2e04c177dc7bd461566b5eb7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.312/fleet-darwin-amd64"
      sha256 "c2cb47dc4483a08024d9868f4f58b93d0426c06c59c8fefe91981349c3244920"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.312/fleet-linux-arm64"
      sha256 "200b2d73be46994f834513f0531e412927cb31b7a2a747ee4ee405e379434ecc"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.312/fleet-linux-amd64"
      sha256 "0a4cee5ca3efe7bcd0efeb4626fe92a97fe30c13434e8ed184dcc93a72500b0d"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
