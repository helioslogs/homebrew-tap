# Reference Homebrew formula. release.sh regenerates this with the real version +
# per-platform SHA256s and pushes it to the `helioslogs/homebrew-tap` repo.
# Install (once the tap exists): brew install helioslogs/tap/helioslogs
class Helioslogs < Formula
  desc "AI-native log search engine with a built-in agent and MCP server"
  homepage "https://github.com/helioslogs/helioslogs"
  version "1.0.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.0/helioslogs-1.0.0-darwin_arm64.tar.gz"
      sha256 "4c8eeab529f353f7493eccb287c5139347052e32e8a4c87d23ed5fcc4c9095a4"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.0/helioslogs-1.0.0-darwin_amd64.tar.gz"
      sha256 "ee060cfb328b7bcc06863330375ca3bf338c66932eda3f89b4573cbbd5ca2f86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.0/helioslogs-1.0.0-linux_arm64.tar.gz"
      sha256 "77f1277c3bbb1ef5b2ed853f779b7c572fec12cd9b6e55ed9050223d90da0bb4"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.0/helioslogs-1.0.0-linux_amd64.tar.gz"
      sha256 "2df1d68d19cdcaf3aa5a57ca31f6b4be98ebbefdfed384d760985b47a3186145"
    end
  end

  def install
    bin.install "helioslogs"
  end

  test do
    assert_match "helioslogs #{version}", shell_output("#{bin}/helioslogs --version")
  end
end
