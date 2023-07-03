# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eopa < Formula
  desc "Styra Enterprise OPA is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/enterprise-opa"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.6.0/eopa_Darwin_x86_64"
      sha256 "68a8f7650c8b8da5cfc7e98af47f544993403cad58097aef0e3f44a306708743"

      def install
        bin.install "eopa_Darwin_x86_64" => "eopa"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.6.0/eopa_Darwin_arm64"
      sha256 "a837520113180b9de98c1e1d00559fe19122964f966cff3526d8c59565c27040"

      def install
        bin.install "eopa_Darwin_arm64" => "eopa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.6.0/eopa_Linux_x86_64"
      sha256 "55ff03e5e93e30ab4a6bf41ac34220faed42166a84bd947d8d34fbb327ff7853"

      def install
        bin.install "eopa_Linux_x86_64" => "eopa"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.6.0/eopa_Linux_arm64"
      sha256 "7216177f0763321e241691ec6274239e38b9d41c3073e7662b1ccdb9539af482"

      def install
        bin.install "eopa_Linux_arm64" => "eopa"
      end
    end
  end
end
