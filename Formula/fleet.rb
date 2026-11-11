class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.11"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.11/fleet-darwin-arm64"
      sha256 "ba024bf4875c69b737946fe0656392e598c099ce092a6397774256f9dd6a267c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.11/fleet-darwin-amd64"
      sha256 "9903d8b64fc7d693a19261f6e0df6aef596219e84c258f279ef2c55e7699bc6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.11/fleet-linux-arm64"
      sha256 "bc5af089af658f15853226e1f44e03ed8de2272ac607ecb5f64f59869c4b86c6"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.11/fleet-linux-amd64"
      sha256 "80c8111a7984e5b0dbd5feb54e5d86d43f264902871a8423166c8ebc186780cc"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
