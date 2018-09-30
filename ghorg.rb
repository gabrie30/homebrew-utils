class Ghorg < Formula
  desc "easily clone an entire Github org into one directory "
  homepage "https://github.com/gabrie30/ghorg"
  url "https://github.com/gabrie30/ghorg/archive/v1.0.7.tar.gz"
  sha256 "701b4371cf296fdb2e13dcbc734f52ab9f6d8e0d8746d25499918de4d13cfb14"

  depends_on "go" => :build

#   def install
#     ENV["GOPATH"] = buildpath
      
# #     system "go", "get", "./..."
#     system "go", "get", "github.com/google/go-github"
#     system "go", "get", "golang.org/x/oauth2"
#     system "go", "get", "github.com/joho/godotenv"
#     system "go", "get", "github.com/mitchellh/go-homedir"
#     system "go", "get", "github.com/fatih/color"
#     system "go", "get", "github.com/gabrie30/ghorg/cmd"
#     system "go", "get", "github.com/gabrie30/ghorg/colorlog"
#     system "go", "get", "github.com/gabrie30/ghorg/config"

#     system "go", "build", "-o", "ghorg"

#     bin.install "ghorg"
#   end
  
  def install
    system "gobuild.sh"
    bin.install ".gobuild/bin/ghorg" => "ghorg"
  end

  def post_install
    ohai ""
    ohai "***************************"
    ohai "One last thing!"
    ohai "Rememebr to set your $HOME/.ghorg with the contents from the link below"
    ohai "https://raw.githubusercontent.com/gabrie30/ghorg/master/.env-sample"
    ohai "***************************"
    ohai ""
  end
end
