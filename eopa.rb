# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eopa < Formula
  desc "Styra Enterprise OPA is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/enterprise-opa"
  version "1.23.0"

  on_macos do
    on_intel do
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.23.0/eopa_Darwin_x86_64"
      sha256 "faa42314ca2b1ff0a9603b8f4d6a68026b5a0829b89f0efd85f08afc6ae05f4a"

      def install
        bin.install "eopa_Darwin_x86_64" => "eopa"
      end
    end
    on_arm do
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.23.0/eopa_Darwin_arm64"
      sha256 "37b6e078c65aa02c98114189e08f95ad6c598928006bdf4100fe7489a9516731"

      def install
        bin.install "eopa_Darwin_arm64" => "eopa"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.23.0/eopa_Linux_x86_64"
        sha256 "eed0de7c6feef8930a63cf995c85d27f65286769ae5f0c8ac3e15873929f7dd7"

        def install
          bin.install "eopa_Linux_x86_64" => "eopa"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.23.0/eopa_Linux_arm64"
        sha256 "ef2929505881803eb6579b6e9bcca27e545a4a06daa6805aa885915dabb9614c"

        def install
          bin.install "eopa_Linux_arm64" => "eopa"
        end
      end
    end
  end
end
