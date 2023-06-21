# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Regal < Formula
  desc "Regal is a linter for Rego, with the goal of making your Rego magnificent!"
  homepage "https://github.com/styrainc/regal"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/regal/releases/download/v0.2.0/regal_Darwin_x86_64"
      sha256 "1012888611e40a3c6bb329e6d1bf79d1b64f3a61dce30288e48462cbec521e0d"

      def install
        bin.install "regal_Darwin_x86_64" => "regal"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/regal/releases/download/v0.2.0/regal_Darwin_arm64"
      sha256 "89d0b72467456b13a867521fdbac009fa98c040c6649e667761bd7dba74d0dac"

      def install
        bin.install "regal_Darwin_arm64" => "regal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/regal/releases/download/v0.2.0/regal_Linux_x86_64"
      sha256 "ad4f29ed6cf829cdb4cf49b8063c41aebe906e6123ada61adc79fff4a93a37fe"

      def install
        bin.install "regal_Linux_x86_64" => "regal"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/regal/releases/download/v0.2.0/regal_Linux_arm64"
      sha256 "1fbb3d49bd698d45eb9f644af05fdadd8faf247ac4150d28b0d9159729b8eaf4"

      def install
        bin.install "regal_Linux_arm64" => "regal"
      end
    end
  end
end
