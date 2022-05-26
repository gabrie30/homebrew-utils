# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghorg < Formula
  desc "Quickly clone an entire org/users repositories into one directory"
  homepage "https://github.com/gabrie30/ghorg"
  version "1.7.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.7.14/ghorg_1.7.14_Darwin_arm64.tar.gz"
      sha256 "82bfc56e5e8710199f3fc29f1e8c36b71cce4a15efe4b1215fb21d370a4d9a70"

      def install
        bin.install "ghorg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.7.14/ghorg_1.7.14_Darwin_x86_64.tar.gz"
      sha256 "c57d50ed3910a7931f7b8a862847b4ec786223a500a7804884f6f532b4a1672f"

      def install
        bin.install "ghorg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.7.14/ghorg_1.7.14_Linux_x86_64.tar.gz"
      sha256 "338edd235661c480d6750bce50ac4e13d966aecd6575650d46e7a3feca40ba81"

      def install
        bin.install "ghorg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.7.14/ghorg_1.7.14_Linux_arm64.tar.gz"
      sha256 "4e2c351cd0e2e760629dfdd46f36c1727a7d5c21c85ae986c5552916ca1f4e25"

      def install
        bin.install "ghorg"
      end
    end
  end

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
