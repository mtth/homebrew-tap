class GitJot < Formula
  desc "Git commands to emulate branch notes"
  homepage "https://github.com/mtth/git-jot"
  license "MIT"
  version "0.4.1"
  url "https://github.com/mtth/git-jot/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "9916369b9c7d541174a1160ebb0c41813eab664ccdb41087dfb421b0dfa23c9f"

  depends_on "git"

  def install
    # TODO: Build and install manpage.
    bin.install "git-jot.sh" => "git-jot"
  end
end
