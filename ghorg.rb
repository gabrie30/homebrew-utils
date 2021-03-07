class Ghorg < Formula
  ghorg_version = "v1.5.1"

  desc "Quickly clone an entire org/users repositories into one directory"
  homepage "https://github.com/gabrie30/ghorg"
  url "https://github.com/gabrie30/ghorg/archive/#{ghorg_version}.tar.gz"
  version ghorg_version
  sha256 "9da3064331d173f701cf2a3f1af9cf89f2b7a2b38d1c07078661dc7b0d60fb6a"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    bin_path = buildpath/"src/github.com/gabrie30/ghorg"
    bin_path.install Dir["*"]
    cd bin_path do
      system "go", "build", "-o", bin/"ghorg", "."
    end
  end

  test do
    v = `#{bin}/ghorg version`
    assert_equal ghorg_version, v.chomp, "ghorg version not correct expected: #{ghorg_version}, got: #{v}"
  end

  def post_install
    ohai ""
    ohai "***************************"
    ohai "One last thing!"
    ohai "Remember to set your $HOME/ghorg/conf.yaml with the contents from the link below"
    ohai "https://raw.githubusercontent.com/gabrie30/ghorg/master/sample-conf.yaml"
    ohai ""
    ohai "Here's all you need to do..."
    ohai "1) mkdir -p $HOME/.config/ghorg"
    ohai "2) curl https://raw.githubusercontent.com/gabrie30/ghorg/master/sample-conf.yaml > $HOME/.config/ghorg/conf.yaml"
    ohai "***************************"
    ohai ""
  end
end
