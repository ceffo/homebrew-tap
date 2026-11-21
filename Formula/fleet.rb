class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.368"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.368/fleet-darwin-arm64"
      sha256 "e965cd44dc7c26713937068e441e545eb177ce4c9e16377de91150a049d11705"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.368/fleet-darwin-amd64"
      sha256 "e4753020a96a97f8da2721b8c7a0261fa45bfb757aa78128cf07c473e55f1cc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.368/fleet-linux-arm64"
      sha256 "9df20ed7a0790e49c3318dd791b4a7c4544109eead6e9a9d0af7a652da06d311"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.368/fleet-linux-amd64"
      sha256 "b4008d46a8b97d96165cbc89e0bceb7773b24e4b5546c7af96606abc90c795df"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
