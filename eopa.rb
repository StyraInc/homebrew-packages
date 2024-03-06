# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eopa < Formula
  desc "Styra Enterprise OPA is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/enterprise-opa"
  version "1.18.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.18.1/eopa_Darwin_x86_64"
      sha256 "d88c30e899f771e292c4f29902ce9852b48debda478c9448bbbd962489e8a249"

      def install
        bin.install "eopa_Darwin_x86_64" => "eopa"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.18.1/eopa_Darwin_arm64"
      sha256 "51d81b7ae26cedd3e2329c13f1fda67829bf72031fe829dc53dbbb5e39a745c1"

      def install
        bin.install "eopa_Darwin_arm64" => "eopa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.18.1/eopa_Linux_x86_64"
      sha256 "be5dbb23fbaac2d8d2db5aa15a72e503f1dc2177cbf64a265f320fdd9124ce2c"

      def install
        bin.install "eopa_Linux_x86_64" => "eopa"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.18.1/eopa_Linux_arm64"
      sha256 "e1fcf7cb6a3a901649fb18c0796b08e604f3a592df42a74bea9c8594cf4eec58"

      def install
        bin.install "eopa_Linux_arm64" => "eopa"
      end
    end
  end
end
