class Ghorg < Formula
  desc "easily clone an entire Github org into one directory "
  homepage "https://github.com/gabrie30/ghorg"
  url "https://github.com/gabrie30/ghorg/archive/v1.0.0.tar.gz"
  sha256 "d88a6a622dceb9f2ad90c93ebcc3b7ee14445d08a168c6e0a4986ec615726dc6"

  def install
    system "make", "install" 
  end
end
