class GitJot < Formula
  desc "Git commands to emulate branch notes"
  homepage "https://github.com/mtth/git-jot"
  license "MIT"
  version "0.7.0"
  url "https://github.com/mtth/git-jot/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "b1e657221e561635a0df02ebd9f605698cc2b36976546f77dc9b62dec3a8a4e9"

  depends_on "git"

  def install
    # TODO: Build and install manpage.
    bin.install "git-jot.sh" => "git-jot"
  end
end
