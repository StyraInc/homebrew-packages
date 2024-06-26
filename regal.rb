# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Regal < Formula
  desc "Regal is a linter for Rego, with the goal of making your Rego magnificent!"
  homepage "https://github.com/styrainc/regal"
  version "0.23.1"

  on_macos do
    on_intel do
      url "https://github.com/StyraInc/regal/releases/download/v0.23.1/regal_Darwin_x86_64"
      sha256 "6f00e22f1ff4f3ab7238ba2d9f2658b9ece6001a5274890fcf5351bd19f111f8"

      def install
        bin.install "regal_Darwin_x86_64" => "regal"
      end
    end
    on_arm do
      url "https://github.com/StyraInc/regal/releases/download/v0.23.1/regal_Darwin_arm64"
      sha256 "2576b29c69d10406bf5a6ce047bff740b414d7181e97fa1d97ce6d14af879dad"

      def install
        bin.install "regal_Darwin_arm64" => "regal"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/StyraInc/regal/releases/download/v0.23.1/regal_Linux_x86_64"
        sha256 "8f9b1fe5545757014a760c24ed464f48a7ed3eba94e2f8d8c2c872f6457c0031"

        def install
          bin.install "regal_Linux_x86_64" => "regal"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/StyraInc/regal/releases/download/v0.23.1/regal_Linux_arm64"
        sha256 "430f5d157882d3895550dae5bebf7a0d465b94a34855126f6d616e2bf1ac0c13"

        def install
          bin.install "regal_Linux_arm64" => "regal"
        end
      end
    end
  end
end
