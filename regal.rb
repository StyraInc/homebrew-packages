# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Regal < Formula
  desc "Regal is a linter for Rego, with the goal of making your Rego magnificent!"
  homepage "https://github.com/styrainc/regal"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/regal/releases/download/v0.17.0/regal_Darwin_arm64"
      sha256 "da8410a8c5d2db9667e10ab319b4d656caf36b934ce1c5acfae65c29d8a9249a"

      def install
        bin.install "regal_Darwin_arm64" => "regal"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/regal/releases/download/v0.17.0/regal_Darwin_x86_64"
      sha256 "28de095a17dde6d701654d5d386fe03eac8c2bef6959826c67d5db4f1891cc03"

      def install
        bin.install "regal_Darwin_x86_64" => "regal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/regal/releases/download/v0.17.0/regal_Linux_x86_64"
      sha256 "8819542164315580bde31fcbb2b4d7ea84f85a98ec1d957e7be8ca9a9272467e"

      def install
        bin.install "regal_Linux_x86_64" => "regal"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/regal/releases/download/v0.17.0/regal_Linux_arm64"
      sha256 "8d4b6f5c3f8e312ab3732055b243e94eb08f014016ae4fe27933ba9a4f2b66c7"

      def install
        bin.install "regal_Linux_arm64" => "regal"
      end
    end
  end
end
