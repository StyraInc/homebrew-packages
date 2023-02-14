# typed: false
# frozen_string_literal: true

class Load < Formula
  desc "Styra Load is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads "
  homepage "https://www.styra.com/styra-load"
  version "0.49.0-8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/load/releases/download/v0.49.0-8/load_Darwin_arm64"
      sha256 "f10549650446f9bf8b10c064625f502f4522fe97546e5c77b541b99c095b2428"

      def install
        mv "load_Darwin_arm64", "load"
        bin.install "load"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/load/releases/download/v0.49.0-8/load_Darwin_x86_64"
      sha256 "95623641dd3295bc1da4be3dfe15734e24a90e6d154c54b7ce2de401c48c1826"

      def install
        mv "load_Darwin_x86_64", "load"
        bin.install "load"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/load/releases/download/v0.49.0-8/load_Linux_arm64"
      sha256 "8ee7d3d53a4d99de63c98f477fa9fb91bf7270b61e67d3b6d7e5c2b47227781b"

      def install
        mv "load_Linux_arm64", "load"
        bin.install "load"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/load/releases/download/v0.49.0-8/load_Linux_x86_64"
      sha256 "29ac221d2c5d9f1f4295a4e5e6da146fef3971991fcaba9a2e4133058d49dce5"

      def install
        mv "load_Linux_x86_64", "load"
        bin.install "load"
      end
    end
  end
end