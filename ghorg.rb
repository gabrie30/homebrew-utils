require 'pry'
class Ghorg < Formula
  desc "easily clone an entire Github org into one directory "
  homepage "https://github.com/gabrie30/ghorg"
  url "https://github.com/gabrie30/ghorg/archive/v1.0.3.tar.gz"
  sha256 "758240782bea2cf78860c2f7e036c8ae5cec7e0e3fd2227f382868385e5372f1"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    system "go", "get", "github.com/google/go-github/github"
    system "go", "get", "golang.org/x/oauth2"
    system "go", "get", "github.com/joho/godotenv"
    system "go", "get", "github.com/mitchellh/go-homedir"
    system "go", "get", "github.com/fatih/color"
    system "go", "get", "github.com/gabrie30/ghorg/cmd"
    system "go", "get", "github.com/gabrie30/ghorg/colorlog"
    system "go", "get", "github.com/gabrie30/ghorg/config"

    system "go", "build", "-o", "ghorg"

    system "make", "homebrew"
    binding.pry
    bin.install "ghorg"
  end
end
