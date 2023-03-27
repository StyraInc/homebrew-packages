# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Load < Formula
  desc "Styra Load is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/styra-load"
  version "0.102.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/load/releases/download/v0.102.4/load_Darwin_x86_64"
      sha256 "7131cb5372e910faf4e1de161cf210863d5185d41b45f4474fdb1ba6fa72a775"

      def install
        bin.install "load_Darwin_x86_64" => "load"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/load/releases/download/v0.102.4/load_Darwin_arm64"
      sha256 "7e1534767626d36358cd4d01e287ee1978448f6bd878cbd5041ea4abda5ccf63"

      def install
        bin.install "load_Darwin_arm64" => "load"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/load/releases/download/v0.102.4/load_Linux_arm64"
      sha256 "926e8de91bb58a5e445103e411b4951c183340d908f9e3b62637d5d680d0c8a9"

      def install
        bin.install "load_Linux_arm64" => "load"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/load/releases/download/v0.102.4/load_Linux_x86_64"
      sha256 "1e3389a09e5c860919283080bf93a050bbb480c499bcb58ba57eb90cf50ec315"

      def install
        bin.install "load_Linux_x86_64" => "load"
      end
    end
  end
end
