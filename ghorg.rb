require "language/go"

class Ghorg < Formula
  desc "Quickly clone an entire org/users repositories into one directory - Supports GitHub, GitLab, and Bitbucket"
  homepage ""
  url "https://github.com/gabrie30/ghorg/archive/1.2.0.tar.gz"
  sha256 "20660585d2e14e49054b181335012eb9d99799c2862c118f29b2866172338301"

  # Generated with: https://github.com/samertm/homebrew-go-resources

  go_resource "github.com/fatih/color" do
    url "https://github.com/fatih/color.git",
      :revision => "3f9d52f7176a6927daacff70a3e8d1dc2025c53e"
  end

  go_resource "github.com/fsnotify/fsnotify" do
    url "https://github.com/fsnotify/fsnotify.git",
      :revision => "4bf2d1fec78374803a39307bfb8d340688f4f28e"
  end

  go_resource "github.com/google/go-github" do
    url "https://github.com/google/go-github.git",
      :revision => "1a07ca55c956bb1e859c72922ddea5a7a989b378"
  end

  go_resource "github.com/google/go-querystring" do
    url "https://github.com/google/go-querystring.git",
      :revision => "c8c88dbee036db4e4808d1f2ec8c2e15e11c3f80"
  end

  go_resource "github.com/hashicorp/hcl" do
    url "https://github.com/hashicorp/hcl.git",
      :revision => "914dc3f8dd7c463188c73fc47e9ced82a6e421ca"
  end

  go_resource "github.com/k0kubun/pp" do
    url "https://github.com/k0kubun/pp.git",
      :revision => "dae4d5f2e789701e22710ed93159077e14bdf3a5"
  end

  go_resource "github.com/korovkin/limiter" do
    url "https://github.com/korovkin/limiter.git",
      :revision => "dac5a6b2a536f0be4fc6264be6115ae0a1a2e866"
  end

  go_resource "github.com/ktrysmt/go-bitbucket" do
    url "https://github.com/ktrysmt/go-bitbucket.git",
      :revision => "08ab101942e9f6d45346514cae54ca3d18afa250"
  end

  go_resource "github.com/magiconair/properties" do
    url "https://github.com/magiconair/properties.git",
      :revision => "a586bb8b7deaae2a0eb4c6c8b63a539425628137"
  end

  go_resource "github.com/mattn/go-colorable" do
    url "https://github.com/mattn/go-colorable.git",
      :revision => "98ec13f34aabf44cc914c65a1cfb7b9bc815aef1"
  end

  go_resource "github.com/mattn/go-isatty" do
    url "https://github.com/mattn/go-isatty.git",
      :revision => "31745d66dd679ac0ac4f8d3ecff168fce6170c6a"
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
      :revision => "6f6ca416216a6b6dfee682275111b8b6bb6f8d58"
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
      :revision => "b04b5bfc50cbb6c036d2115ed55ea1bccdaf82a9"
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
      :revision => "eabbc68a3ecd5cf8c11a2f84dbda5e7a38493b2f"
  end

  go_resource "github.com/subosito/gotenv" do
    url "https://github.com/subosito/gotenv.git",
      :revision => "de67a6614a4de71ad5e380b6946e56ab957d58c5"
  end

  go_resource "github.com/xanzy/go-gitlab" do
    url "https://github.com/xanzy/go-gitlab.git",
      :revision => "f74501cbc643b2731fcdfb29ca53230bbb2b935a"
  end

  go_resource "golang.org/x/crypto" do
    url "https://go.googlesource.com/crypto.git",
      :revision => "1d94cc7ab1c630336ab82ccb9c9cda72a875c382"
  end

  go_resource "golang.org/x/net" do
    url "https://go.googlesource.com/net.git",
      :revision => "16171245cfb220d5317888b716d69c1fb4e7992b"
  end

  go_resource "golang.org/x/oauth2" do
    url "https://go.googlesource.com/oauth2.git",
      :revision => "858c2ad4c8b6c5d10852cb89079f6ca1c7309787"
  end

  go_resource "golang.org/x/sys" do
    url "https://go.googlesource.com/sys.git",
      :revision => "12a6c2dcc1e4cb348b57847c73987099e261714b"
  end

  go_resource "golang.org/x/text" do
    url "https://go.googlesource.com/text.git",
      :revision => "cbf43d21aaebfdfeb81d91a5f444d13a3046e686"
  end

  go_resource "gopkg.in/ini.v1" do
    url "https://gopkg.in/ini.v1.git",
      :revision => "87e589f4917038ae250cff2446db7573f47e97ca"
  end

  go_resource "gopkg.in/yaml.v2" do
    url "https://gopkg.in/yaml.v2.git",
      :revision => "1f64d6156d11335c3f22d9330b0ad14fc1e789ce"
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
