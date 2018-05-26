class Ghorg < Formula
  desc "easily clone an entire Github org into one directory "
  homepage "https://github.com/gabrie30/ghorg"
  url "https://github.com/gabrie30/ghorg/archive/v1.0.1.tar.gz"
  sha256 "fec897a9c3bbc414aba521e47b6c0a24aa85a2b80f7abba7919b6de3d5935ab2"

  def install
    system "make", "homebrew"
  end
end
