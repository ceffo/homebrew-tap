class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.313"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.313/fleet-darwin-arm64"
      sha256 "0c7ffadb107c3b2dff24ec83f8c79fe92931a8066e48244256dce6146ecc10a3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.313/fleet-darwin-amd64"
      sha256 "c40953cb28a21a2662e469fd56e3c877221fdc7555acd72708ecb233e42e04ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.313/fleet-linux-arm64"
      sha256 "8fcea9e19cace17cc58d5d7d7d777077b7ef852812fb857b4d56af082126a3dc"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.313/fleet-linux-amd64"
      sha256 "33409d63460468989b0004e950c7bc1e19a8622c09f6f1cb5ddf36e6cdef74b1"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
