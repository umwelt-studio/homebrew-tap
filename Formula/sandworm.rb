# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sandworm < Formula
  desc "Project file concatenator for Claude AI"
  homepage "https://github.com/umwelt-studio/sandworm"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umwelt-studio/sandworm/releases/download/v0.1.1/sandworm_0.1.1_darwin_amd64.tar.gz"
      sha256 "1655d15a14a4cdad79a76b61437eff2d9a676e787a1e8bada99499ab4451db42"

      def install
        bin.install "sandworm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umwelt-studio/sandworm/releases/download/v0.1.1/sandworm_0.1.1_darwin_arm64.tar.gz"
      sha256 "5594c4ea0fc4f5fbe3fcad6668c12ced18a5cee7cf4d6468c2afae8e3e226aa7"

      def install
        bin.install "sandworm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/umwelt-studio/sandworm/releases/download/v0.1.1/sandworm_0.1.1_linux_amd64.tar.gz"
        sha256 "e1b768713287272772ef5c66bcd536bc5ac5c46533a2ef6810ec36ab89f6de25"

        def install
          bin.install "sandworm"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/umwelt-studio/sandworm/releases/download/v0.1.1/sandworm_0.1.1_linux_arm64.tar.gz"
        sha256 "1ce2607b41010a578f5d587029f8a3ec6486a04caca36f90fa0c5fd3a0ecb939"

        def install
          bin.install "sandworm"
        end
      end
    end
  end

  test do
    system "#{bin}/sandworm", "--version"
  end
end
