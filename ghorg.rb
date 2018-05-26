class Ghorg < Formula
  desc "easily clone an entire Github org into one directory "
  homepage "https://github.com/gabrie30/ghorg"
  url "https://github.com/gabrie30/ghorg/archive/v1.0.4.tar.gz"
  sha256 "ffda2316e938ddfb1060b6562c5f75e327df10f2d5eaed42b2aa4ba7cb476fdf"

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

    bin.install "ghorg"
  end
end
