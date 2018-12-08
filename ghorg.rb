require "language/go"

class Ghorg < Formula
  desc "easily clone an entire Github org into one directory "
  homepage "https://github.com/gabrie30/ghorg"
  url "https://github.com/gabrie30/ghorg/archive/1.0.8.tar.gz"
  sha256 "6f5adb5e5afa031bd7a59849859c66bf1dffcf54332b66a7e51454472a87fc22"

  # Generated with: https://github.com/samertm/homebrew-go-resources

  go_resource "github.com/fatih/color" do
    url "https://github.com/fatih/color.git",
      :revision => "2d684516a8861da43017284349b7e303e809ac21"
  end

  go_resource "github.com/google/go-github" do
    url "https://github.com/google/go-github.git",
      :revision => "71b7a374a5fcfdca56ba35925f6ddba8b890fe60"
  end

  go_resource "github.com/google/go-querystring" do
    url "https://github.com/google/go-querystring.git",
      :revision => "44c6ddd0a2342c386950e880b658017258da92fc"
  end

  go_resource "github.com/joho/godotenv" do
    url "https://github.com/joho/godotenv.git",
      :revision => "c0b86d615e06d6fa5f869364d68f774ba49a86e3"
  end

  go_resource "github.com/mitchellh/go-homedir" do
    url "https://github.com/mitchellh/go-homedir.git",
      :revision => "ae18d6b8b3205b561c79e8e5f69bff09736185f4"
  end

  go_resource "golang.org/x/net" do
    url "https://go.googlesource.com/net.git",
      :revision => "4dfa2610cdf3b287375bbba5b8f2a14d3b01d8de"
  end

  go_resource "golang.org/x/oauth2" do
    url "https://go.googlesource.com/oauth2.git",
      :revision => "d2e6202438beef2727060aa7cabdd924d92ebfd9"
  end

  depends_on "go" => :build


  def install
    ENV["GOPATH"] = buildpath


    bin_path = buildpath/"src/github.com/gabrie30/ghorg"
    # Copy all files from their current location (GOPATH root)
    bin_path.install Dir["*"]

    # Stage dependencies. This requires the "require language/go" line above
    Language::Go.stage_deps resources, buildpath/"src"
    cd bin_path do
      # Install the compiled binary into Homebrew's `bin` - a pre-existing
      # global variable
      system "go", "build", "-o", bin/"ghorg", "."
    end
  end

  # Homebrew requires tests.
  test do
    assert_match "1", "1", 0
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
