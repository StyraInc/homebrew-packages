# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eopa < Formula
  desc "Styra Enterprise OPA is an enterprise-grade authorization engine built to provide resource-efficient performance for data-heavy workloads"
  homepage "https://www.styra.com/enterprise-opa"
  version "1.24.2"

  on_macos do
    on_intel do
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.24.2/eopa_Darwin_x86_64"
      sha256 "db582d14a3b9bb918107db3137a320703638f18e62272a04663749ae3093cf6e"

      def install
        bin.install "eopa_Darwin_x86_64" => "eopa"
      end
    end
    on_arm do
      url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.24.2/eopa_Darwin_arm64"
      sha256 "3b3ac320d90cce35641c8ee2213024ec9f3ed4b5a541b0a6cd385dd29e87ffd6"

      def install
        bin.install "eopa_Darwin_arm64" => "eopa"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.24.2/eopa_Linux_x86_64"
        sha256 "6141ea2cc40c855a0a002d54bf5d21ce3a20f65aa1ed733bbd6bbb9a9270ef75"

        def install
          bin.install "eopa_Linux_x86_64" => "eopa"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/StyraInc/enterprise-opa/releases/download/v1.24.2/eopa_Linux_arm64"
        sha256 "9ab25825c8d9777320e3c86f945099024d250c0e69fe2b7dd6118c720fa03e88"

        def install
          bin.install "eopa_Linux_arm64" => "eopa"
        end
      end
    end
  end
end
