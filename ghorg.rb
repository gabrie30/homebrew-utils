# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghorg < Formula
  desc "Quickly clone an entire org/users repositories into one directory"
  homepage "https://github.com/gabrie30/ghorg"
  version "1.9.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.9.10/ghorg_1.9.10_Darwin_arm64.tar.gz"
      sha256 "3dcaaa4055643b42c0010526939ce63f34399cb078b57d4a31bcca203cfa34ed"

      def install
        bin.install "ghorg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.9.10/ghorg_1.9.10_Darwin_x86_64.tar.gz"
      sha256 "fd6f72ccce3f79331cf297b8ce9fa66c1f3fb60bbadfca07a05c19efcc8e54b3"

      def install
        bin.install "ghorg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.9.10/ghorg_1.9.10_Linux_x86_64.tar.gz"
      sha256 "02b78248300cbafb9c2f6b1a81d09c3bf1caa1a227f51b2f3d1f9bec97770395"

      def install
        bin.install "ghorg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gabrie30/ghorg/releases/download/v1.9.10/ghorg_1.9.10_Linux_arm64.tar.gz"
      sha256 "874ed51c1f6d68d3e6f9b7cf8cfc43496b8b7e22b115e8a64a51aa4abf586096"

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
