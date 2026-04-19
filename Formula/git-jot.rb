class GitJot < Formula
  desc "Git commands to emulate branch notes"
  homepage "https://github.com/mtth/git-jot"
  license "MIT"
  version "0.7.0"
  url "https://github.com/mtth/git-jot/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "b1e657221e561635a0df02ebd9f605698cc2b36976546f77dc9b62dec3a8a4e9"
  head "https://github.com/mtth/git-jot.git", branch: "main"

  depends_on "asciidoctor" => :build
  depends_on "git"

  def install
    source_version = build.head? ? "HEAD" : "v#{version}"

    system "asciidoctor", "-b", "manpage",
           "-a", "mansource=git-jot #{source_version}",
           "-a", "manmanual=git-jot manual",
           "-o", "git-jot.1", "git-jot.1.adoc"
    system "gzip", "-9", "git-jot.1"

    man1.install "git-jot.1.gz"
    bin.install "git-jot.sh" => "git-jot"
  end
end
