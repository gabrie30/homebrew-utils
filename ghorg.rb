class Ghorg < Formula
  desc "easily clone an entire Github org into one directory "
  homepage "https://github.com/gabrie30/ghorg"
  url "https://github.com/gabrie30/ghorg/archive/v1.0.2.tar.gz"
  sha256 "68967136ead81cb6d98caa6ecd1b75ea5b2dea64e6b409759e41b081ff670e97"

  def install
    system("touch", "~/.ghorg")
    system("echo", "GHORG_BRANCH=", ">", "~/.ghorg")
  end
end
