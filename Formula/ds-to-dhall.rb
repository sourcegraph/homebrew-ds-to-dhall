# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DsToDhall < Formula
  desc "CLI to translate deploy-sourcegraph YAML to Dhall"
  homepage "https://github.com/sourcegraph/ds-to-dhall"
  version "0.18.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sourcegraph/ds-to-dhall/releases/download/v0.18.0/ds-to-dhall_0.18.0_Darwin_x86_64.tar.gz"
    sha256 "8edeb4c8fdc51c5225ecdd0def88a4b54b19df4fba9e170ca12577ea54da7866"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sourcegraph/ds-to-dhall/releases/download/v0.18.0/ds-to-dhall_0.18.0_Linux_x86_64.tar.gz"
    sha256 "5eef346afac46b03c52961f2ada8e228668ff1d3d2090644dc7069f7e69155eb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/sourcegraph/ds-to-dhall/releases/download/v0.18.0/ds-to-dhall_0.18.0_Linux_arm64.tar.gz"
    sha256 "5852b92239e4e1a15c96359d1d753852ea60fd5deba971310242565ec1036245"
  end

  def install
    bin.install "ds-to-dhall"
  end

  test do
    system "#{bin}/ds-to-dhall --help"
  end
end
