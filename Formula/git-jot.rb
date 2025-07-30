class GitJot < Formula
  desc "Git commands to emulate branch notes"
  homepage "https://github.com/mtth/git-jot"
  license "MIT"
  version "0.0.5"
  url "https://github.com/mtth/git-jot/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "ff6390c3cf4598d24ccf190064f0d2bc04ff955e651cefccd2ceab549900285d"

  depends_on "git"

  def install
    # TODO: Build and install manpage.
    bin.install "git-jot.sh" => "git-jot"
  end
end
