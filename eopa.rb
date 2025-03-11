# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eopa < Formula
  desc "Styra Enterprise OPA is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/enterprise-opa"
  version "1.36.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.36.0/eopa_Darwin_x86_64"
      sha256 "a9c6723f4f5a1aa78841ef9e3f211b99b9371415c44237aa383db9fe0a1ec048"

      def install
        bin.install "eopa_Darwin_x86_64" => "eopa"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.36.0/eopa_Darwin_arm64"
      sha256 "7f051f0036c7a0f9f772f7165cc3c73a9f79cefcbbb2dacfe8f4c1cbd6f9a127"

      def install
        bin.install "eopa_Darwin_arm64" => "eopa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.36.0/eopa_Linux_x86_64"
        sha256 "9c0f8017efd92949c6d13be9b3bec5563dbd0cde689bd9510b86a80954ba8479"

        def install
          bin.install "eopa_Linux_x86_64" => "eopa"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.36.0/eopa_Linux_arm64"
        sha256 "0115696a7566454616ef99b421f32e1b7463cfdf09e4e598cf2a0026d34da519"

        def install
          bin.install "eopa_Linux_arm64" => "eopa"
        end
      end
    end
  end
end
