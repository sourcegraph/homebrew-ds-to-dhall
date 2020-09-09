# This file was generated by GoReleaser. DO NOT EDIT.
class DsToDhall < Formula
  desc "CLI to translate deploy-sourcegraph YAML to Dhall"
  homepage "https://github.com/sourcegraph/ds-to-dhall"
  version "0.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sourcegraph/ds-to-dhall/releases/download/v0.8.0/ds-to-dhall_0.8.0_Darwin_x86_64.tar.gz"
    sha256 "bdc209343ba2ab7346aa1e88a45011e4572172382da6204120b40cb441f52097"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sourcegraph/ds-to-dhall/releases/download/v0.8.0/ds-to-dhall_0.8.0_Linux_x86_64.tar.gz"
      sha256 "f52f23adaa2278a71e2b4b315401e85ea78812845334801fa14bbcee3756c9af"
    end
  end

  def install
    bin.install "ds-to-dhall"
  end

  test do
    system "#{bin}/ds-to-dhall --help"
  end
end
