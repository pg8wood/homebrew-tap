class Slog < Formula
  desc "Bash-based logging CLI"
  homepage "https://github.com/pg8wood/slog"
  url "https://github.com/pg8wood/slog/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ae8b090db3ea66059d5892715d2b706c59b4c6f2df1675e69f7580c477f249a5"

  head "https://github.com/pg8wood/slog.git", branch: "main"

  depends_on "cameroncooke/axe/axe"
  depends_on "jq"

  def install
    bin.install "slog"
  end

  test do
    assert_predicate bin/"slog", :exist?
    assert_predicate bin/"slog", :executable?
  end
end
