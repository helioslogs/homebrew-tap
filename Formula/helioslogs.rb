# Reference Homebrew formula. release.sh regenerates this with the real version +
# per-platform SHA256s and pushes it to the `helioslogs/homebrew-tap` repo.
# Install (once the tap exists): brew install helioslogs/tap/helioslogs
class Helioslogs < Formula
  desc "AI-native log search engine with a built-in agent and MCP server"
  homepage "https://github.com/helioslogs/helioslogs"
  version "0.2.2"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.2/helioslogs-0.2.2-darwin_arm64.tar.gz"
      sha256 "7aa7ce06635227e73037a88eb71d651a3b5d484a64dd87525ed1af3af5a5a916"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.2/helioslogs-0.2.2-darwin_amd64.tar.gz"
      sha256 "37d916171b72e35e67b12c9927e0409409b61a619332d19a2b3ccff0df0d0272"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.2/helioslogs-0.2.2-linux_arm64.tar.gz"
      sha256 "326a87fc510ecb800081652eda00748b6ff8831c3bc9d261e0513bd3b3d10139"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.2/helioslogs-0.2.2-linux_amd64.tar.gz"
      sha256 "261e10864d197c6de3e970b9fdb566decf949cfa90cbe9467cd1a380dae7d4d2"
    end
  end

  def install
    bin.install "helioslogs"
  end

  test do
    assert_match "helioslogs #{version}", shell_output("#{bin}/helioslogs --version")
  end
end
