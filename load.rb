# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Load < Formula
  desc "Styra Load is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/styra-load"
  version "0.102.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/load/releases/download/v0.102.3/load_Darwin_arm64"
      sha256 "320134ae30b762615e39394a555d71524b4e346c70e24972e31bd30954cdedaa"

      def install
        bin.install "load_Darwin_arm64" => "load"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/load/releases/download/v0.102.3/load_Darwin_x86_64"
      sha256 "ff3689301f2eff92d25e2f7da66637be9264f78ab95b2a0327d3b4493a3ac505"

      def install
        bin.install "load_Darwin_x86_64" => "load"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/load/releases/download/v0.102.3/load_Linux_x86_64"
      sha256 "4a8c543f0fe236a1ec48579aa39bf81c84760d0dd5be10c074c31cb936e540fe"

      def install
        bin.install "load_Linux_x86_64" => "load"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/load/releases/download/v0.102.3/load_Linux_arm64"
      sha256 "6a7ac624a4e39d5e861c5027dafb63e396d0e74f6c486996de8353a7567be962"

      def install
        bin.install "load_Linux_arm64" => "load"
      end
    end
  end
end
