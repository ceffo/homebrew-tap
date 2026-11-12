class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.93"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.93/fleet-darwin-arm64"
      sha256 "64e58b63339138b28713ac0219d740dab9c1bb28c975c2818ccaae7f2c63977b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.93/fleet-darwin-amd64"
      sha256 "1c793de0d14943299e9cad15c16cb713192595b588d12e8554fb2e901c45109a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.93/fleet-linux-arm64"
      sha256 "63d3802b1f1fdc17aaadd1b3bc5b3638d3080972236bc1c4e5eb45eb97896f92"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.93/fleet-linux-amd64"
      sha256 "609ed7d651799bddc7809f72196e633e003589ce654abd73378754efe2783f9e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
