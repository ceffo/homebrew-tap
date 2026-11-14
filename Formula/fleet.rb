class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.191"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.191/fleet-darwin-arm64"
      sha256 "97d84a1fd826199794be463907c0bdcdf7082f6c5893a3eaa74b09b1ede6a434"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.191/fleet-darwin-amd64"
      sha256 "3f218e1a42d5dc81cf3e758a7e765d1f4b5fd48b7eb8e632d1f97fe5946f7205"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.191/fleet-linux-arm64"
      sha256 "74309d2276fae1dd62a76e8d55081de0063a4e21aa23ba6cf33fc51a01a037f3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.191/fleet-linux-amd64"
      sha256 "d1cff564704a1600fdbbf716e92381d0306e61db0b93088756be29d22811bba5"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
