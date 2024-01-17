# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eopa < Formula
  desc "Styra Enterprise OPA is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/enterprise-opa"
  version "1.15.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.15.5/eopa_Darwin_x86_64"
      sha256 "d5cab1aca95b9e312b804cae5abd703ed7bdda31c427e321c8a2d2e909a2b63e"

      def install
        bin.install "eopa_Darwin_x86_64" => "eopa"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.15.5/eopa_Darwin_arm64"
      sha256 "3aa4ec4a91a3db15e7e005b007e6ecf521cc0c8b2fbf285da1689b69fd13927c"

      def install
        bin.install "eopa_Darwin_arm64" => "eopa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.15.5/eopa_Linux_x86_64"
      sha256 "86f5a39f331c6c5f415f0afb56550b901b0f20bb48e130fafade203694a8ff81"

      def install
        bin.install "eopa_Linux_x86_64" => "eopa"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.15.5/eopa_Linux_arm64"
      sha256 "f814d36bb02571cd70e1cafee330775f74f447b50f80af79cdb98d1ea4caef09"

      def install
        bin.install "eopa_Linux_arm64" => "eopa"
      end
    end
  end
end
