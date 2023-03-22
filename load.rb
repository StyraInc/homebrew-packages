# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Load < Formula
  desc "Styra Load is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/styra-load"
  version "0.102.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/load/releases/download/v0.102.0/load_Darwin_arm64"
      sha256 "3cf107387ea3f065082c047f2220a016f2de803deae6244b7c93dec383f9bec3"

      def install
        bin.install "load_Darwin_arm64" => "load"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/load/releases/download/v0.102.0/load_Darwin_x86_64"
      sha256 "c4bbc31ad377c791dbe265a7e2bbfb20956240b6fd3297ec6019507d40814ca0"

      def install
        bin.install "load_Darwin_x86_64" => "load"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/load/releases/download/v0.102.0/load_Linux_arm64"
      sha256 "629bfe859d736a24068160962b1e97fe8e03c2895869381a72352fe58cddf803"

      def install
        bin.install "load_Linux_arm64" => "load"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/load/releases/download/v0.102.0/load_Linux_x86_64"
      sha256 "f602709631be2593e0ef373915544925dbc723e317d8dec27f0ea105a6fb39df"

      def install
        bin.install "load_Linux_x86_64" => "load"
      end
    end
  end
end
