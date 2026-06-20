# Reference Homebrew formula. release.sh regenerates this with the real version +
# per-platform SHA256s and pushes it to the `helioslogs/homebrew-tap` repo.
# Install (once the tap exists): brew install helioslogs/tap/helioslogs
class Helioslogs < Formula
  desc "AI-native log search engine with a built-in agent and MCP server"
  homepage "https://github.com/helioslogs/helioslogs"
  version "0.2.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.1/helioslogs-0.2.1-darwin_arm64.tar.gz"
      sha256 "cd7fc043948a188cdbcf8dab27d637ef077cc351255839d5f157c2d208b30c75"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.1/helioslogs-0.2.1-darwin_amd64.tar.gz"
      sha256 "2b287cf19c9a978977dc77274f164c9fa1353fbc7209b8b3d7376a37cbca711f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.1/helioslogs-0.2.1-linux_arm64.tar.gz"
      sha256 "8d2a25900dd5eec5ab32a581199099b7766e050a9c5cedfa6326cef5c329381c"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.1/helioslogs-0.2.1-linux_amd64.tar.gz"
      sha256 "cc7baaeb9f036e718e43f5932e5340782c09b19caa635d984e79a9a3e213682f"
    end
  end

  def install
    bin.install "helioslogs"
  end

  test do
    assert_match "helioslogs #{version}", shell_output("#{bin}/helioslogs --version")
  end
end
