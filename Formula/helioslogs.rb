# Reference Homebrew formula. release.sh regenerates this with the real version +
# per-platform SHA256s and pushes it to the `helioslogs/homebrew-tap` repo.
# Install (once the tap exists): brew install helioslogs/tap/helioslogs
class Helioslogs < Formula
  desc "AI-native log search engine with a built-in agent and MCP server"
  homepage "https://github.com/helioslogs/helioslogs"
  version "1.0.3"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.3/helioslogs-1.0.3-darwin_arm64.tar.gz"
      sha256 "37a504a86c8cfe629a5749710ac05f5765e692cd871b890eaa9e753b768ca85b"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.3/helioslogs-1.0.3-darwin_amd64.tar.gz"
      sha256 "780c6c39401e446b2d75e2164b8bd113261384fc4a03cc53627e506d1e62b6cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.3/helioslogs-1.0.3-linux_arm64.tar.gz"
      sha256 "0bf613545910635d544971bc94bcab38fa22cbd3c74664e541e40d87d5f0e38a"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.3/helioslogs-1.0.3-linux_amd64.tar.gz"
      sha256 "db60e4219e9e10829eeb806ac0a55b834bda8e02002e05c60aca01bdc3477b96"
    end
  end

  def install
    bin.install "helioslogs"
  end

  test do
    assert_match "helioslogs #{version}", shell_output("#{bin}/helioslogs --version")
  end
end
