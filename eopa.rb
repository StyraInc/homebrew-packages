# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eopa < Formula
  desc "Styra Enterprise OPA is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/enterprise-opa"
  version "1.14.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.14.0/eopa_Darwin_x86_64"
      sha256 "8fbb3d9b187bc08435f1f7610c0ab93b337345b48c8e16da6c709c299f8acb14"

      def install
        bin.install "eopa_Darwin_x86_64" => "eopa"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.14.0/eopa_Darwin_arm64"
      sha256 "f155b9a4f95674de047fc5c0c8db18c6cda77432e247796ea6e1d8201ba28494"

      def install
        bin.install "eopa_Darwin_arm64" => "eopa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.14.0/eopa_Linux_arm64"
      sha256 "f1019a20701819b2d8327a46e05869c7f25b83438034832bcdef9637f917d9e7"

      def install
        bin.install "eopa_Linux_arm64" => "eopa"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.14.0/eopa_Linux_x86_64"
      sha256 "e7de670911eba728bb714b768f65c3b0f65b2796bb55b584762cf67a22bf370b"

      def install
        bin.install "eopa_Linux_x86_64" => "eopa"
      end
    end
  end
end
