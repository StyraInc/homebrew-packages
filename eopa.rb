# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eopa < Formula
  desc "Styra Enterprise OPA is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/enterprise-opa"
  version "1.27.0"

  on_macos do
    on_intel do
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.27.0/eopa_Darwin_x86_64"
      sha256 "68cf587f54ed4aa4e141e0ee88b1fc037b90cf650cfb4a4bbc6bf8c3c3b7a9ee"

      def install
        bin.install "eopa_Darwin_x86_64" => "eopa"
      end
    end
    on_arm do
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.27.0/eopa_Darwin_arm64"
      sha256 "d3ee7c9d78a76cea50f2ccd5267465c6e2d6e29a04ae6f927a3a25a4dc32f8e8"

      def install
        bin.install "eopa_Darwin_arm64" => "eopa"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.27.0/eopa_Linux_x86_64"
        sha256 "22bea44aa7f480b67108dc3fb8a7e49066201d2427a856c10179158f724e7f3d"

        def install
          bin.install "eopa_Linux_x86_64" => "eopa"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.27.0/eopa_Linux_arm64"
        sha256 "3d6ff285e476dc5b6fb179adb86e36837ea41fe50465e1005ba79e5f83b5fd26"

        def install
          bin.install "eopa_Linux_arm64" => "eopa"
        end
      end
    end
  end
end
