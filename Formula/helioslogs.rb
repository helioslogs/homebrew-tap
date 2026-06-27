# Reference Homebrew formula. release.sh regenerates this with the real version +
# per-platform SHA256s and pushes it to the `helioslogs/homebrew-tap` repo.
# Install (once the tap exists): brew install helioslogs/tap/helioslogs
class Helioslogs < Formula
  desc "AI-native log search engine with a built-in agent and MCP server"
  homepage "https://github.com/helioslogs/helioslogs"
  version "1.0.4"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.4/helioslogs-1.0.4-darwin_arm64.tar.gz"
      sha256 "9b1543860866cab50f24d1ae696da87e9c7f4c2f9d6197b74785290f653d99a0"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.4/helioslogs-1.0.4-darwin_amd64.tar.gz"
      sha256 "1f9cc609c4292b8505502d6bf653d20c4bb062b752344d2d8350fe06d0670d47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.4/helioslogs-1.0.4-linux_arm64.tar.gz"
      sha256 "e71866bf3f2c72a49b1dde42fd6a8a27147a3d85acaf4d0fcf1007a46cc086aa"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v1.0.4/helioslogs-1.0.4-linux_amd64.tar.gz"
      sha256 "f983559da59efdb7cae9cde4c285990af0eed22d4b2c6e703e3bb631c0784449"
    end
  end

  def install
    bin.install "helioslogs"
  end

  test do
    assert_match "helioslogs #{version}", shell_output("#{bin}/helioslogs --version")
  end
end
