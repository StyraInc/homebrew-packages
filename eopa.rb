# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eopa < Formula
  desc "Styra Enterprise OPA is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/enterprise-opa"
  version "1.42.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.42.0/eopa_Darwin_x86_64"
      sha256 "894b528e4dbf469b9a5ff039c45bbbbd12544a65d648ce6f9cabdaafeb4a6eb9"

      def install
        bin.install "eopa_Darwin_x86_64" => "eopa"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.42.0/eopa_Darwin_arm64"
      sha256 "07c447b3a1bc652463a63aa447c247975e4b3dc00106fc14958e47ab9890bf98"

      def install
        bin.install "eopa_Darwin_arm64" => "eopa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.42.0/eopa_Linux_x86_64"
      sha256 "9b3a32fa7d56228af85ace1fbac441a09f089742ab9ca38812d648e268560047"
      def install
        bin.install "eopa_Linux_x86_64" => "eopa"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.42.0/eopa_Linux_arm64"
      sha256 "33c3f28c83db818df9f6e28acfaffde74f0b2c2dcb6d59c934529ec465f639dd"
      def install
        bin.install "eopa_Linux_arm64" => "eopa"
      end
    end
  end
end
