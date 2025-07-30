class GitJot < Formula
  desc "Git commands to emulate branch notes"
  homepage "https://github.com/mtth/git-jot"
  license "MIT"
  version "0.0.5"
  url "https://github.com/mtth/git-jot/archive/refs/tags/v0.0.5.tar.gz"
  # sha256 "TODO"

  depends_on "git"

  def install
    bin.install "git-jot.sh" => "git-jot"
  end
end
