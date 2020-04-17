require "language/go"

class Ghorg < Formula
  desc "Quickly clone an entire org/users repositories into one directory - Supports GitHub, GitLab, and Bitbucket"
  homepage ""
  url "https://github.com/gabrie30/ghorg/archive/1.2.2.tar.gz"
  sha256 "37947eceb43ded075f68e8e454e8b5f685b1db3c4a2846ea8648140a35e05d33"

  # Generated with: https://github.com/samertm/homebrew-go-resources



  go_resource "github.com/fatih/color" do
    url "https://github.com/fatih/color.git",
      :revision => "daf2830f2741ebb735b21709a520c5f37d642d85"
  end

  go_resource "github.com/fsnotify/fsnotify" do
    url "https://github.com/fsnotify/fsnotify.git",
      :revision => "45d7d09e39ef4ac08d493309fa031790c15bfe8a"
  end

  go_resource "github.com/google/go-github" do
    url "https://github.com/google/go-github.git",
      :revision => "34cb1d623f03e277545da01608448d9fea80dc3b"
  end

  go_resource "github.com/google/go-querystring" do
    url "https://github.com/google/go-querystring.git",
      :revision => "c8c88dbee036db4e4808d1f2ec8c2e15e11c3f80"
  end

  go_resource "github.com/hashicorp/go-cleanhttp" do
    url "https://github.com/hashicorp/go-cleanhttp.git",
      :revision => "d3fcbee8e1810ecee4bdbf415f42f84cfd0e3361"
  end

  go_resource "github.com/hashicorp/go-retryablehttp" do
    url "https://github.com/hashicorp/go-retryablehttp.git",
      :revision => "27fc49b35882e89429a3cf613f70e1c580bcd8a9"
  end

  go_resource "github.com/hashicorp/hcl" do
    url "https://github.com/hashicorp/hcl.git",
      :revision => "914dc3f8dd7c463188c73fc47e9ced82a6e421ca"
  end

  go_resource "github.com/k0kubun/pp" do
    url "https://github.com/k0kubun/pp.git",
      :revision => "99835366d1cc1593249c150d5c1acfb9036ccb1d"
  end

  go_resource "github.com/korovkin/limiter" do
    url "https://github.com/korovkin/limiter.git",
      :revision => "dac5a6b2a536f0be4fc6264be6115ae0a1a2e866"
  end

  go_resource "github.com/ktrysmt/go-bitbucket" do
    url "https://github.com/ktrysmt/go-bitbucket.git",
      :revision => "470011f15acf6d30d571329aa8d053f681a782da"
  end

  go_resource "github.com/magiconair/properties" do
    url "https://github.com/magiconair/properties.git",
      :revision => "a586bb8b7deaae2a0eb4c6c8b63a539425628137"
  end

  go_resource "github.com/mattn/go-colorable" do
    url "https://github.com/mattn/go-colorable.git",
      :revision => "4e32bdb9fe4eefa9b10cb112e44debf77784ff7a"
  end

  go_resource "github.com/mattn/go-isatty" do
    url "https://github.com/mattn/go-isatty.git",
      :revision => "cb30d6282491c185f77d9bec5d25de1bb61a06bc"
  end

  go_resource "github.com/mitchellh/go-homedir" do
    url "https://github.com/mitchellh/go-homedir.git",
      :revision => "af06845cf3004701891bf4fdb884bfe4920b3727"
  end

  go_resource "github.com/mitchellh/mapstructure" do
    url "https://github.com/mitchellh/mapstructure.git",
      :revision => "ba04b217da920f27cfc994a979894602990935ad"
  end

  go_resource "github.com/pelletier/go-toml" do
    url "https://github.com/pelletier/go-toml.git",
      :revision => "8e8d2a6aad23fcaa64716c5fa6975ec3abbf8281"
  end

  go_resource "github.com/spf13/afero" do
    url "https://github.com/spf13/afero.git",
      :revision => "f1155579b0d925f4ccae2da50175acd36d03d632"
  end

  go_resource "github.com/spf13/cast" do
    url "https://github.com/spf13/cast.git",
      :revision => "1ffadf551085444af981432dd0f6d1160c11ec64"
  end

  go_resource "github.com/spf13/cobra" do
    url "https://github.com/spf13/cobra.git",
      :revision => "b80aeb17fc46362ff9cea51437a719322f8965ac"
  end

  go_resource "github.com/spf13/jwalterweatherman" do
    url "https://github.com/spf13/jwalterweatherman.git",
      :revision => "94f6ae3ed3bceceafa716478c5fbf8d29ca601a1"
  end

  go_resource "github.com/spf13/pflag" do
    url "https://github.com/spf13/pflag.git",
      :revision => "2e9d26c8c37aae03e3f9d4e90b7116f5accb7cab"
  end

  go_resource "github.com/spf13/viper" do
    url "https://github.com/spf13/viper.git",
      :revision => "97ee7adfef4882d78c0ef26e22a0c8a7a8bf6776"
  end

  go_resource "github.com/subosito/gotenv" do
    url "https://github.com/subosito/gotenv.git",
      :revision => "de67a6614a4de71ad5e380b6946e56ab957d58c5"
  end

  go_resource "github.com/xanzy/go-gitlab" do
    url "https://github.com/xanzy/go-gitlab.git",
      :revision => "0e58a4f6b76e750f24fc6abe09c5f628465d6919"
  end

  go_resource "golang.org/x/crypto" do
    url "https://go.googlesource.com/crypto.git",
      :revision => "baeed622b8d86045ff442b324772b0ad306a2b3f"
  end

  go_resource "golang.org/x/net" do
    url "https://go.googlesource.com/net.git",
      :revision => "d3edc9973b7eb1fb302b0ff2c62357091cea9a30"
  end

  go_resource "golang.org/x/oauth2" do
    url "https://go.googlesource.com/oauth2.git",
      :revision => "bf48bf16ab8d622ce64ec6ce98d2c98f916b6303"
  end

  go_resource "golang.org/x/sys" do
    url "https://go.googlesource.com/sys.git",
      :revision => "c3d80250170dec19bf61949c81233cede5ddaf61"
  end

  go_resource "golang.org/x/text" do
    url "https://go.googlesource.com/text.git",
      :revision => "06d492aade888ab8698aad35476286b7b555c961"
  end

  go_resource "golang.org/x/time" do
    url "https://go.googlesource.com/time.git",
      :revision => "555d28b269f0569763d25dbe1a237ae74c6bcc82"
  end

  go_resource "gopkg.in/ini.v1" do
    url "https://gopkg.in/ini.v1.git",
      :revision => "39bc4ddcb8b9d0100f7a040816380ccda878b94a"
  end

  go_resource "gopkg.in/yaml.v2" do
    url "https://gopkg.in/yaml.v2.git",
      :revision => "53403b58ad1b561927d19068c655246f2db79d48"
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
    ohai "Remember to set your $HOME/ghorg/conf.yaml with the contents from the link below"
    ohai "https://raw.githubusercontent.com/gabrie30/ghorg/master/sample-conf.yaml"
    ohai "***************************"
    ohai ""
  end
end
