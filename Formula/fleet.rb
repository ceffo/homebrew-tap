class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.326"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.326/fleet-darwin-arm64"
      sha256 "1977665f57fab611aae548dac298d28c597da3e21389ed848f9b8af5838ed72b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.326/fleet-darwin-amd64"
      sha256 "42c9db3d9efb8a261d6922603ae80cd820efb5ad989aec5cb62331ffd3ae970e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.326/fleet-linux-arm64"
      sha256 "fa7a6552eb4618beccd8557ee4d10be2e307bae6549aab36bcb884083307e418"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.326/fleet-linux-amd64"
      sha256 "7e92b71963f6724ac4d7ba077f86b5bf8f8e3c01730af94ee3fd12c2f44956ca"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
