class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.295"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.295/fleet-darwin-arm64"
      sha256 "b545e47620ebaac90b2117b5b8edd65b757029dd08e8bdc595171a265274def9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.295/fleet-darwin-amd64"
      sha256 "456667dd39920da25226fd4d56f9014f3e038e03b38e217c458705942384c30d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.295/fleet-linux-arm64"
      sha256 "a9611f426f59a4e85308de96fee26ddf39157f49ccf3dfdcf97849a88c187c26"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.295/fleet-linux-amd64"
      sha256 "ce5ec51e38035d1f481ae2f12c9752a17e55dce2e9a9109aaa84b9bbd713c0cf"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
