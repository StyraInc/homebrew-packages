# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Regal < Formula
  desc "Regal is a linter for Rego, with the goal of making your Rego magnificent!"
  homepage "https://github.com/styrainc/regal"
  version "0.19.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/regal/releases/download/v0.19.0/regal_Darwin_x86_64"
      sha256 "2a552ad2c5de802809eed38d70cf6e5ddeb793ef5f9a7399404d8d099033372f"

      def install
        bin.install "regal_Darwin_x86_64" => "regal"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/regal/releases/download/v0.19.0/regal_Darwin_arm64"
      sha256 "663c05e9111684f93da5583b5f1dc0dc4499265c20cecb960c230c997a7e3d6f"

      def install
        bin.install "regal_Darwin_arm64" => "regal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/regal/releases/download/v0.19.0/regal_Linux_arm64"
      sha256 "924e94aeb68552a550dbb3d7df57982b42abe3f7cf478cb8cad99b395b289d77"

      def install
        bin.install "regal_Linux_arm64" => "regal"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/regal/releases/download/v0.19.0/regal_Linux_x86_64"
      sha256 "fcd2347c15e2142f8aae0cd99a9795036a69d16bd77d3b5ea867ad003a1c4979"

      def install
        bin.install "regal_Linux_x86_64" => "regal"
      end
    end
  end
end
