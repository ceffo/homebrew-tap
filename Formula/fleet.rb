class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.346"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.346/fleet-darwin-arm64"
      sha256 "15ab350f8b39441d0d8c5baa513f4b563fc1ea498f91fdefccbef1abc961ed19"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.346/fleet-darwin-amd64"
      sha256 "760031ece69cba37182d66d9676b631b84d984c3a09591dad9921027176792a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.346/fleet-linux-arm64"
      sha256 "b5362a5e55c1471a77cd6ea9db47bc5095e4c42e200d5b65f03c9afa4ccaf71d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.346/fleet-linux-amd64"
      sha256 "aae055a006a52ee1b96ab29101ad5edad937c0f5e25c04f05072e0a266d49c27"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
