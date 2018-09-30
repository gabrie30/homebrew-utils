class Ghorg < Formula
  desc "easily clone an entire Github org into one directory "
  homepage "https://github.com/gabrie30/ghorg"
  url "https://github.com/gabrie30/ghorg/archive/v1.0.6.tar.gz"
  sha256 "3bc1c8ab5ef16e39db0a483695202ce7265dae25d90659fdcabf86eac3974b08"

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
    ENV["GOPATH"] = buildpath

    bin_path = buildpath/"src/github.com/gabrie30/ghorg"
    bin_path.install Dir["*"]
    cd bin_path do
      system "go", "build", "-o", bin/"ghorg", "."
    end
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
