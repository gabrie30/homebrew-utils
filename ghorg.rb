# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghorg < Formula
  desc "Quickly clone an entire org/users repositories into one directory"
  homepage "https://github.com/gabrie30/ghorg"
  version "1.7.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.7.8/ghorg_1.7.8_Darwin_arm64.tar.gz"
      sha256 "6c97ad799e71ada3d8019973a5f96e13d07d5574a7b8a625fd3f3de312897d9f"

      def install
        ENV["GOPATH"] = buildpath

        bin_path = buildpath/"src/github.com/gabrie30/ghorg"
        bin_path.install Dir["*"]
        cd bin_path do
          system "go", "build", "-o", bin/"ghorg", "${PWD}"
        end
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.7.8/ghorg_1.7.8_Darwin_x86_64.tar.gz"
      sha256 "44df966c2c8e848485de6a8e1851d9e6bbb508de5441e779548b2bb1ceafe68c"

      def install
        ENV["GOPATH"] = buildpath

        bin_path = buildpath/"src/github.com/gabrie30/ghorg"
        bin_path.install Dir["*"]
        cd bin_path do
          system "go", "build", "-o", bin/"ghorg", "${PWD}"
        end
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.7.8/ghorg_1.7.8_Linux_arm64.tar.gz"
      sha256 "76f9aa5ffea45ef6715910dcb4176fc17c9e5e132b8faf4ca39d6a52e7f32871"

      def install
        ENV["GOPATH"] = buildpath

        bin_path = buildpath/"src/github.com/gabrie30/ghorg"
        bin_path.install Dir["*"]
        cd bin_path do
          system "go", "build", "-o", bin/"ghorg", "${PWD}"
        end
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.7.8/ghorg_1.7.8_Linux_x86_64.tar.gz"
      sha256 "ec3e120bbe008dfc552e8d4fdf3bd5b0a431f2511a44c1496e89978b671cf8a9"

      def install
        ENV["GOPATH"] = buildpath

        bin_path = buildpath/"src/github.com/gabrie30/ghorg"
        bin_path.install Dir["*"]
        cd bin_path do
          system "go", "build", "-o", bin/"ghorg", "${PWD}"
        end
      end
    end
  end

  depends_on "go"

  def post_install
    ohai ""
ohai "***************************"
ohai "For examples on how to use ghorg see: https://github.com/gabrie30/ghorg/tree/master/examples"
ohai ""
ohai "Remember to set your $HOME/.config/ghorg/conf.yaml"
ohai ""
ohai "Here's all you need to do..."
ohai "1) mkdir -p $HOME/.config/ghorg"
ohai "2) curl https://raw.githubusercontent.com/gabrie30/ghorg/master/sample-conf.yaml > $HOME/.config/ghorg/conf.yaml"
ohai "***************************"
ohai ""

  end

  test do
    system "#{bin}/ghorg version"
  end
end
