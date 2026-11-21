class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.356"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.356/fleet-darwin-arm64"
      sha256 "5b7d837ad087713b5ef1e9b06dfe5aee3abde3ae5b7684227470f6fc52ea2b94"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.356/fleet-darwin-amd64"
      sha256 "b9b4faa11f162018c8043457882c7d9d38ad19e22d908fd5615d1ce5371a6669"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.356/fleet-linux-arm64"
      sha256 "accf26508561604249d1bc2473264ee9b08b8f561bdb00e9a729c420a5e62f1a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.356/fleet-linux-amd64"
      sha256 "7f96220982c758efbbc3e9c3548468b69171a05609229b91a26686a01807d7bc"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
