# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kodoo < Formula
  desc "Terminal UI for Odoo"
  homepage "https://github.com/chermed/kodoo"
  version "0.2.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chermed/kodoo/releases/download/v0.2.2/kodoo_0.2.2_darwin_amd64.tar.gz"
      sha256 "2dc44a5ff235b50aa5a03f98fedcefc1a495a6c04a5c8fb7144ac6a986897576"
    end
    if Hardware::CPU.arm?
      url "https://github.com/chermed/kodoo/releases/download/v0.2.2/kodoo_0.2.2_darwin_arm64.tar.gz"
      sha256 "6a8f6c9f3d5c1f1c731a08722ba4786f32e1a0a02e2d0b0b8612d5d417df5f94"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chermed/kodoo/releases/download/v0.2.2/kodoo_0.2.2_linux_amd64.tar.gz"
      sha256 "3cee234585e055144bf1ba25e53284bfab7a12f5b0f82f99236c888c596e3244"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chermed/kodoo/releases/download/v0.2.2/kodoo_0.2.2_linux_arm64.tar.gz"
      sha256 "c56976a33d4a04a69343a8c2958352135fcdf23a476577094f56fc7094c15178"
    end
  end

  def install
    bin.install "kodoo"
  end

  test do
    system "kodoo version"
  end
end
