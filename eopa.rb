# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eopa < Formula
  desc "Styra Enterprise OPA is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/enterprise-opa"
  version "1.16.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.16.0/eopa_Darwin_x86_64"
      sha256 "dd8a6f54f1e7d7b1bc4c539ba0c019875643a7a29fb1e2ca792ecfefd0827481"

      def install
        bin.install "eopa_Darwin_x86_64" => "eopa"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.16.0/eopa_Darwin_arm64"
      sha256 "67e3867101138f3cbb0db397c37620965f992576b3063efbb9df0d8909cf043b"

      def install
        bin.install "eopa_Darwin_arm64" => "eopa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.16.0/eopa_Linux_arm64"
      sha256 "c40091955a7740a7dbeae5d909d5303df82255084dac4a5a032a797712449aff"

      def install
        bin.install "eopa_Linux_arm64" => "eopa"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.16.0/eopa_Linux_x86_64"
      sha256 "2afd99b3914f3d04643b31c8fb0054f9f13a866bad62441a2d7dea3d96f0f76b"

      def install
        bin.install "eopa_Linux_x86_64" => "eopa"
      end
    end
  end
end
