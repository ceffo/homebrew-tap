class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.82"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.82/fleet-darwin-arm64"
      sha256 "e9158b1ade559e571003f99b9a9f2cc6e310a5f3ceee0e19f287a97dbe965558"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.82/fleet-darwin-amd64"
      sha256 "8c62c738c048a5fb5013c46cc33575394ef61ee3ec07556f8241dca9cb8cff2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.82/fleet-linux-arm64"
      sha256 "12d2281e9e0e808807662d4cdb2b63b9bf51c29de29d7662606676fd3f305198"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.82/fleet-linux-amd64"
      sha256 "20bcedec9f39d6b1e01adcd62fd486678a392eb2c85311a42a863ec4a49849ef"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
