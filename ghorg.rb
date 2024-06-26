# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghorg < Formula
  desc "Quickly clone an entire org/users repositories into one directory"
  homepage "https://github.com/gabrie30/ghorg"
  version "1.9.12"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/gabrie30/ghorg/releases/download/v1.9.12/ghorg_1.9.12_Darwin_x86_64.tar.gz"
      sha256 "ac350dbc77ba07c1557987af3c34428b753350298eca246d95969b39a0a793d7"

      def install
        bin.install "ghorg"
      end
    end
    on_arm do
      url "https://github.com/gabrie30/ghorg/releases/download/v1.9.12/ghorg_1.9.12_Darwin_arm64.tar.gz"
      sha256 "595330691480fda185e50ca6203075e910c06e7b8a1e47fd04c8047dd6ce18c2"

      def install
        bin.install "ghorg"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gabrie30/ghorg/releases/download/v1.9.12/ghorg_1.9.12_Linux_x86_64.tar.gz"
        sha256 "3d52d9ec607c640f9ec0de080f883478faf992c1626e58cb6272aeab5c344f97"

        def install
          bin.install "ghorg"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gabrie30/ghorg/releases/download/v1.9.12/ghorg_1.9.12_Linux_arm64.tar.gz"
        sha256 "60b79cd934e6a4f08184dc82c37061cb300aa4fff9a5847ebdfc274a802a880c"

        def install
          bin.install "ghorg"
        end
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
