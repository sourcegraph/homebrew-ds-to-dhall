# This file was generated by GoReleaser. DO NOT EDIT.
class DsToDhall < Formula
  desc "CLI to translate deploy-sourcegraph YAML to Dhall"
  homepage "https://github.com/sourcegraph/ds-to-dhall"
  version "0.13.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sourcegraph/ds-to-dhall/releases/download/v0.13.0/ds-to-dhall_0.13.0_Darwin_x86_64.tar.gz"
    sha256 "14a7e0d759410f38da51da307d77951ce43d1987ffc6fddb0dd1eddd8df901d2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sourcegraph/ds-to-dhall/releases/download/v0.13.0/ds-to-dhall_0.13.0_Linux_x86_64.tar.gz"
    sha256 "0a9daf0d31203efb93525f1080228e977702810c227ae6721b314e1430b081b8"
  end

  def install
    bin.install "ds-to-dhall"
  end

  test do
    system "#{bin}/ds-to-dhall --help"
  end
end
