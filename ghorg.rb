class Ghorg < Formula
  desc "easily clone an entire Github org into one directory "
  homepage "https://github.com/gabrie30/ghorg"
  url "https://github.com/gabrie30/ghorg/archive/v1.0.5.tar.gz"
  sha256 "b2c43893de5e895cb0eeeb268eb1c7de41f8dca8c6150cd87227964add279a98"

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

  def post_install
    ohai ""
    ohai "***************************"
    ohai "One last thing!"
    ohai "Rememebr to set your $HOME/.ghorg with the contents from the link below"
    ohai "https://raw.githubusercontent.com/gabrie30/ghorg/master/.env-sample"
    ohai "***************************"
  end
end
