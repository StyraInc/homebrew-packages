# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Load < Formula
  desc "Styra Load is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/styra-load"
  version "0.102.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/load/releases/download/v0.102.2/load_Darwin_arm64"
      sha256 "ff0bd4f011a35a0fc2153bb48a159c57868beff12018a8855b982dd1ea0aedd8"

      def install
        bin.install "load_Darwin_arm64" => "load"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/load/releases/download/v0.102.2/load_Darwin_x86_64"
      sha256 "874868e66d6dc49850ff8deb27640d2fb491506c0a69e856ecff1ddb1d329cbc"

      def install
        bin.install "load_Darwin_x86_64" => "load"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/load/releases/download/v0.102.2/load_Linux_x86_64"
      sha256 "993bf377aa1fd5c3b6a8781db5562b0ca2a04d0b196ad1dd111971b4cba005a8"

      def install
        bin.install "load_Linux_x86_64" => "load"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/load/releases/download/v0.102.2/load_Linux_arm64"
      sha256 "31d7773cec665f5f16c0167e7525418c7d584915ded64dd4411e848335d76557"

      def install
        bin.install "load_Linux_arm64" => "load"
      end
    end
  end
end
