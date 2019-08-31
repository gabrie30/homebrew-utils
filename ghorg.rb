require "language/go"

class Ghorg < Formula
  desc "Quickly clone an entire org/users repositories into one directory - Supports GitHub, GitLab, and Bitbucket"
  homepage ""
  url "https://github.com/gabrie30/ghorg/archive/1.1.9.tar.gz"
  sha256 "18d8a798c9b3251950eb0358831f160ee4a66bddf65972612323c65f55eda0a9"

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
      :revision => "da8b749b25d68690af6239660210ab1915b029cd"
  end

  go_resource "github.com/google/go-querystring" do
    url "https://github.com/google/go-querystring.git",
      :revision => "c8c88dbee036db4e4808d1f2ec8c2e15e11c3f80"
  end

  go_resource "github.com/hashicorp/hcl" do
    url "https://github.com/hashicorp/hcl.git",
      :revision => "cf7d376da96d9cecec7c7483cec2735efe54a410"
  end

  go_resource "github.com/k0kubun/pp" do
    url "https://github.com/k0kubun/pp.git",
      :revision => "b20d3da80efaecd224c0a49b0f5594444128f1a0"
  end

  go_resource "github.com/ktrysmt/go-bitbucket" do
    url "https://github.com/ktrysmt/go-bitbucket.git",
      :revision => "f538244ac47062f5c3804659f6f0c8356fa3307b"
  end

  go_resource "github.com/magiconair/properties" do
    url "https://github.com/magiconair/properties.git",
      :revision => "de8848e004dd33dc07a2947b3d76f618a7fc7ef1"
  end

  go_resource "github.com/mattn/go-colorable" do
    url "https://github.com/mattn/go-colorable.git",
      :revision => "388941e3ea99c461d2bc2747eaf27741b6dda096"
  end

  go_resource "github.com/mattn/go-isatty" do
    url "https://github.com/mattn/go-isatty.git",
      :revision => "bf9a1dea1961e1d831824fb135332bfb8c10e8b8"
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
      :revision => "781fbae71e40e8e598206a0ac02c680d64df2fd0"
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
      :revision => "b80588d523ec50c7fee20218426cf2ff70920f06"
  end

  go_resource "github.com/spf13/jwalterweatherman" do
    url "https://github.com/spf13/jwalterweatherman.git",
      :revision => "94f6ae3ed3bceceafa716478c5fbf8d29ca601a1"
  end

  go_resource "github.com/spf13/pflag" do
    url "https://github.com/spf13/pflag.git",
      :revision => "972238283c0625cf3e881de7699ba8f2524c340a"
  end

  go_resource "github.com/spf13/viper" do
    url "https://github.com/spf13/viper.git",
      :revision => "e697d557b7f549ddf91098cef2ad6e92176dbcdf"
  end

  go_resource "github.com/subosito/gotenv" do
    url "https://github.com/subosito/gotenv.git",
      :revision => "422ef8095f112cfaf9f40c368e0b9ae8c0714cfb"
  end

  go_resource "github.com/xanzy/go-gitlab" do
    url "https://github.com/xanzy/go-gitlab.git",
      :revision => "b1d195859ad07645a0c3eb3609a1545b5d9e40be"
  end

  go_resource "golang.org/x/crypto" do
    url "https://go.googlesource.com/crypto.git",
      :revision => "60c769a6c58655dab1b9adac0d58967dd517cfba"
  end

  go_resource "golang.org/x/net" do
    url "https://go.googlesource.com/net.git",
      :revision => "74dc4d7220e7acc4e100824340f3e66577424772"
  end

  go_resource "golang.org/x/oauth2" do
    url "https://go.googlesource.com/oauth2.git",
      :revision => "0f29369cfe4552d0e4bcddc57cc75f4d7e672a33"
  end

  go_resource "golang.org/x/sys" do
    url "https://go.googlesource.com/sys.git",
      :revision => "fb81701db80f1745f51259b1f286de3fe2ec80c8"
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
