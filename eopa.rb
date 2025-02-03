# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eopa < Formula
  desc "Styra Enterprise OPA is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/enterprise-opa"
  version "1.32.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.32.1/eopa_Darwin_x86_64"
      sha256 "c327b839fce9a0a9edfd0bd5886575e12f250092e25bdb17c69eebc9012df190"

      def install
        bin.install "eopa_Darwin_x86_64" => "eopa"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.32.1/eopa_Darwin_arm64"
      sha256 "69fb13a4679e241edbc804c99ec87b8dd3478ffe1322bdcf99cbd535250ec28d"

      def install
        bin.install "eopa_Darwin_arm64" => "eopa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.32.1/eopa_Linux_x86_64"
        sha256 "e0fdd66052718243328631c052cfe3d1b945bb2eb72e0b91ad97a2aa4384c551"

        def install
          bin.install "eopa_Linux_x86_64" => "eopa"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.32.1/eopa_Linux_arm64"
        sha256 "a65df939ba12d93abb2dc533d4b897b6eab3ec25bf561e30f6c3440d0ea0eb78"

        def install
          bin.install "eopa_Linux_arm64" => "eopa"
        end
      end
    end
  end
end
