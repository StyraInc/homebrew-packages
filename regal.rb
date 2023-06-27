# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Regal < Formula
  desc "Regal is a linter for Rego, with the goal of making your Rego magnificent!"
  homepage "https://github.com/styrainc/regal"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/regal/releases/download/v0.3.0/regal_Darwin_x86_64"
      sha256 "7b2351234e1edd7098570cb2ba7d87db23982e8e0d8cfe2b131059478467402c"

      def install
        bin.install "regal_Darwin_x86_64" => "regal"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/regal/releases/download/v0.3.0/regal_Darwin_arm64"
      sha256 "e400814c7779bc3d6a0a3d1e6811c7d6c1a8c9fb014c06f53d75851ca6080b0b"

      def install
        bin.install "regal_Darwin_arm64" => "regal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/regal/releases/download/v0.3.0/regal_Linux_arm64"
      sha256 "548bca6ce4d7bd741037ae679a8fe83e5fa6d4c9d12d264cd9a85e1c4f7cf6fd"

      def install
        bin.install "regal_Linux_arm64" => "regal"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/regal/releases/download/v0.3.0/regal_Linux_x86_64"
      sha256 "fdbdd009b403e2121442445c3308ac3888a27ca5cae052da23de58e68ebccf98"

      def install
        bin.install "regal_Linux_x86_64" => "regal"
      end
    end
  end
end
