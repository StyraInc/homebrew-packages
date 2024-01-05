# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Regal < Formula
  desc "Regal is a linter for Rego, with the goal of making your Rego magnificent!"
  homepage "https://github.com/styrainc/regal"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/regal/releases/download/v0.15.0/regal_Darwin_x86_64"
      sha256 "e9f6e0313f1f5446a63353d284b4d42c2c72118e8109313e76510dbc0074a569"

      def install
        bin.install "regal_Darwin_x86_64" => "regal"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/regal/releases/download/v0.15.0/regal_Darwin_arm64"
      sha256 "ed741ac60a0b6a75d17888287a005da6edcfedfa2aae9bea0de1d2d8c3121d8b"

      def install
        bin.install "regal_Darwin_arm64" => "regal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/regal/releases/download/v0.15.0/regal_Linux_x86_64"
      sha256 "11584e39af0e41d0a1100c922d8a0e270f9390ccca92a380ef43e32420e270b9"

      def install
        bin.install "regal_Linux_x86_64" => "regal"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/regal/releases/download/v0.15.0/regal_Linux_arm64"
      sha256 "16ba386cc53d3abdfdeec0a7a32c370a4672394af7b18d62f13c60deae6197f0"

      def install
        bin.install "regal_Linux_arm64" => "regal"
      end
    end
  end
end
