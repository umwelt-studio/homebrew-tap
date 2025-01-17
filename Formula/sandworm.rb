# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sandworm < Formula
  desc "Project file concatenator for Claude AI"
  homepage "https://github.com/umwelt-studio/sandworm"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umwelt-studio/sandworm/releases/download/v0.1.2/sandworm_0.1.2_darwin_amd64.tar.gz"
      sha256 "b6478894acfcc6b533c9b18a256630d579ad6d581fe4cef4f15e5cc6976c43e6"

      def install
        bin.install "sandworm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umwelt-studio/sandworm/releases/download/v0.1.2/sandworm_0.1.2_darwin_arm64.tar.gz"
      sha256 "04b17da24c82aa580340e37e7f19333c0e198b3d31878b0cc48a52867f8feab9"

      def install
        bin.install "sandworm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/umwelt-studio/sandworm/releases/download/v0.1.2/sandworm_0.1.2_linux_amd64.tar.gz"
        sha256 "8d2c9b9dc2a0803e4fe56176386c0971cee351380b60132f5c8dd72e4454dab6"

        def install
          bin.install "sandworm"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/umwelt-studio/sandworm/releases/download/v0.1.2/sandworm_0.1.2_linux_arm64.tar.gz"
        sha256 "c2fec68ec7bb223224d4fa604db5f4077dd2533179f2896826a147944d09de7c"

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
