# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eopa < Formula
  desc "Styra Enterprise OPA is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/enterprise-opa"
  version "1.34.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.34.0/eopa_Darwin_x86_64"
      sha256 "a954b69d73c2cdcd17e23a707ecac8a939db99ab1471edb751dae9f1deaa89b6"

      def install
        bin.install "eopa_Darwin_x86_64" => "eopa"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.34.0/eopa_Darwin_arm64"
      sha256 "26917b680a6e40e39a40267eed0d6869e28b3de3fdb467321e9919cac71303b5"

      def install
        bin.install "eopa_Darwin_arm64" => "eopa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.34.0/eopa_Linux_x86_64"
        sha256 "1b1678b0efa07c826db95a168b25ee9a6f024daded8a7dbeaf54d5130e147ffc"

        def install
          bin.install "eopa_Linux_x86_64" => "eopa"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.34.0/eopa_Linux_arm64"
        sha256 "5aa9cca125fdb6c60899c055f2f59adce5d2d9216337343f3430e7525d500a92"

        def install
          bin.install "eopa_Linux_arm64" => "eopa"
        end
      end
    end
  end
end
