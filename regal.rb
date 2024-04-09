# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Regal < Formula
  desc "Regal is a linter for Rego, with the goal of making your Rego magnificent!"
  homepage "https://github.com/styrainc/regal"
  version "0.20.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/regal/releases/download/v0.20.1/regal_Darwin_x86_64"
      sha256 "8fc63525f53d298b27cb93e590ed57fb9fa73da2f83515a827e9ecc3523de9e9"

      def install
        bin.install "regal_Darwin_x86_64" => "regal"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/regal/releases/download/v0.20.1/regal_Darwin_arm64"
      sha256 "4a5ca6cc2f625fd7c3eaf2d70c2a98ad5dd1e904cf962fdd7e61d98f7383e51f"

      def install
        bin.install "regal_Darwin_arm64" => "regal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/regal/releases/download/v0.20.1/regal_Linux_x86_64"
      sha256 "1ba9d8e9a4dcecc8292dd2d5d5610a567a438c812f278e9abe2a68fd59d3e116"

      def install
        bin.install "regal_Linux_x86_64" => "regal"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/regal/releases/download/v0.20.1/regal_Linux_arm64"
      sha256 "28323ae16c48352896b8556d738e80a3f49d2cd06fd4b21bf6d68a6d8cbb16bb"

      def install
        bin.install "regal_Linux_arm64" => "regal"
      end
    end
  end
end
