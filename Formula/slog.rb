class Slog < Formula
  desc "Bash-based logging CLI"
  homepage "https://github.com/pg8wood/slog"
  url "https://github.com/pg8wood/slog/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "41a76cf1ca6a664371aece3d923b28dc3dbbb1a9c4393aa92d7cdc597bde2262"

  head "https://github.com/pg8wood/slog.git", branch: "main"

  depends_on "cameroncooke/axe/axe"
  depends_on "jq"

  def install
    bin.install "slog", "slog-repl.py"
  end

  test do
    assert_predicate bin/"slog", :exist?
    assert_predicate bin/"slog", :executable?
  end
end
