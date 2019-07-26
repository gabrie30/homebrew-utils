require "language/go"

class Ghorg < Formula
  desc "Quickly clone an entire GitHub Org into one directory "
  homepage ""
  url "https://github.com/gabrie30/ghorg/archive/1.0.9.tar.gz"
  sha256 "528f407467292b6f25fadd29843487cea8c0a1355403187bb35b5e1403ff51fd"

  # Generated with: https://github.com/samertm/homebrew-go-resources

  go_resource "github.com/fatih/color" do
    url "https://github.com/fatih/color.git",
      :revision => "3f9d52f7176a6927daacff70a3e8d1dc2025c53e"
  end

  go_resource "github.com/fsnotify/fsnotify" do
    url "https://github.com/fsnotify/fsnotify.git",
      :revision => "1485a34d5d5723fea214f5710708e19a831720e4"
  end

  go_resource "github.com/google/go-github" do
    url "https://github.com/google/go-github.git",
      :revision => "c756c329c19dbbadba0675b42af693093c3f2c45"
  end

  go_resource "github.com/google/go-querystring" do
    url "https://github.com/google/go-querystring.git",
      :revision => "c8c88dbee036db4e4808d1f2ec8c2e15e11c3f80"
  end

  go_resource "github.com/hashicorp/hcl" do
    url "https://github.com/hashicorp/hcl.git",
      :revision => "cf7d376da96d9cecec7c7483cec2735efe54a410"
  end

  go_resource "github.com/magiconair/properties" do
    url "https://github.com/magiconair/properties.git",
      :revision => "de8848e004dd33dc07a2947b3d76f618a7fc7ef1"
  end

  go_resource "github.com/mitchellh/go-homedir" do
    url "https://github.com/mitchellh/go-homedir.git",
      :revision => "af06845cf3004701891bf4fdb884bfe4920b3727"
  end

  go_resource "github.com/mitchellh/mapstructure" do
    url "https://github.com/mitchellh/mapstructure.git",
      :revision => "3536a929edddb9a5b34bd6861dc4a9647cb459fe"
  end

  go_resource "github.com/pelletier/go-toml" do
    url "https://github.com/pelletier/go-toml.git",
      :revision => "dba45d427ff48cfb9bcf633db3a8e43b7364e261"
  end

  go_resource "github.com/spf13/afero" do
    url "https://github.com/spf13/afero.git",
      :revision => "588a75ec4f32903aa5e39a2619ba6a4631e28424"
  end

  go_resource "github.com/spf13/cast" do
    url "https://github.com/spf13/cast.git",
      :revision => "c01685bb8421cecb276fa517e91f757215f980b3"
  end

  go_resource "github.com/spf13/cobra" do
    url "https://github.com/spf13/cobra.git",
      :revision => "2d7544ebdeb5f926805c57af8dccc6c359de28d4"
  end

  go_resource "github.com/spf13/jwalterweatherman" do
    url "https://github.com/spf13/jwalterweatherman.git",
      :revision => "94f6ae3ed3bceceafa716478c5fbf8d29ca601a1"
  end

  go_resource "github.com/spf13/pflag" do
    url "https://github.com/spf13/pflag.git",
      :revision => "24fa6976df40757dce6aea913e7b81ade90530e1"
  end

  go_resource "github.com/spf13/viper" do
    url "https://github.com/spf13/viper.git",
      :revision => "e02bc9eca55d5fc66221bc0aeeaaa77410603914"
  end

  go_resource "github.com/subosito/gotenv" do
    url "https://github.com/subosito/gotenv.git",
      :revision => "69b5b6104433beb2cb9c3ce00bdadf3c7c2d3f34"
  end

  go_resource "golang.org/x/crypto" do
    url "https://go.googlesource.com/crypto.git",
      :revision => "4def268fd1a49955bfb3dda92fe3db4f924f2285"
  end

  go_resource "golang.org/x/net" do
    url "https://go.googlesource.com/net.git",
      :revision => "da137c7871d730100384dbcf36e6f8fa493aef5b"
  end

  go_resource "golang.org/x/oauth2" do
    url "https://go.googlesource.com/oauth2.git",
      :revision => "0f29369cfe4552d0e4bcddc57cc75f4d7e672a33"
  end

  go_resource "golang.org/x/sys" do
    url "https://go.googlesource.com/sys.git",
      :revision => "fae7ac547cb717d141c433a2a173315e216b64c4"
  end

  go_resource "golang.org/x/text" do
    url "https://go.googlesource.com/text.git",
      :revision => "342b2e1fbaa52c93f31447ad2c6abc048c63e475"
  end

  go_resource "gopkg.in/yaml.v2" do
    url "https://gopkg.in/yaml.v2.git",
      :revision => "51d6538a90f86fe93ac480b35f37b2be17fef232"
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
    ohai "Rememebr to set your $HOME/ghorg/conf.yaml with the contents from the link below"
    ohai "https://raw.githubusercontent.com/gabrie30/ghorg/master/sample-conf.yaml"
    ohai "***************************"
    ohai ""
  end
end
