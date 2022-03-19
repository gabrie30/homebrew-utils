# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghorg < Formula
  desc "Quickly clone an entire org/users repositories into one directory"
  homepage "https://github.com/gabrie30/ghorg"
  version "1.7.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.7.12/ghorg_1.7.12_Darwin_x86_64.tar.gz"
      sha256 "4c77bf6f9eb8100358f35d16dbfcd3b495cbce5028bf0619b477b68b0cb0f472"

      def install
        bin.install "ghorg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.7.12/ghorg_1.7.12_Darwin_arm64.tar.gz"
      sha256 "74c7c5c667c384b8109e40eccea162509a22aad7cd38849d9db7c5dcc6edcb73"

      def install
        bin.install "ghorg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.7.12/ghorg_1.7.12_Linux_arm64.tar.gz"
      sha256 "7b6beb26f235d561086ab8151b3c3727a834d50d2602f19af7454056d0cb2a17"

      def install
        bin.install "ghorg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.7.12/ghorg_1.7.12_Linux_x86_64.tar.gz"
      sha256 "4666497f7b6443fd817988e8b2be7b5ece1c2856e1195e28ad775bf60edbaaff"

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
