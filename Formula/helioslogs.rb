# Reference Homebrew formula. release.sh regenerates this with the real version +
# per-platform SHA256s and pushes it to the `helioslogs/homebrew-tap` repo.
# Install (once the tap exists): brew install helioslogs/tap/helioslogs
class Helioslogs < Formula
  desc "AI-native log search engine with a built-in agent and MCP server"
  homepage "https://github.com/helioslogs/helioslogs"
  version "1.0.2"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.2/helioslogs-1.0.2-darwin_arm64.tar.gz"
      sha256 "ec0ff7bb4f38e89881847516b7ca5d245c7bb37a3f8325f0d9d87eee7714346e"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.2/helioslogs-1.0.2-darwin_amd64.tar.gz"
      sha256 "faded4cb87146aba948c4c63614aab6f14415b74e172eddffed5da8bdee088c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.2/helioslogs-1.0.2-linux_arm64.tar.gz"
      sha256 "3759d88d27467763dd47642720e568d908298cabb54ab63c2cbe310eb525969f"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.2/helioslogs-1.0.2-linux_amd64.tar.gz"
      sha256 "9ee30d4cafd2fabc4ece93ecd6eaca1113972b5d0dec4f7af585241c4afd854d"
    end
  end

  def install
    bin.install "helioslogs"
  end

  test do
    assert_match "helioslogs #{version}", shell_output("#{bin}/helioslogs --version")
  end
end
