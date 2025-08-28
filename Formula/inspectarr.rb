class Inspectarr < Formula
  desc "CLI tool for querying and inspecting the media in your Radarr and Sonarr instances"
  homepage "https://github.com/adamhl8/inspectarr"
  license "MIT"
  version "1.2.0"

  on_macos do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.2.0/inspectarr-macos-arm64"
      sha256 "3c85a60747d8d42b4f933c1bece2f1ce60dea49a3feb5f1c3f784bfebfcced2c"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.2.0/inspectarr-macos-x64"
      sha256 "1ba530bedafa50c388e1a29f0d4f2e39efc55c947cdf27b13ee4934d39c57bd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.2.0/inspectarr-linux-arm64"
      sha256 "2daa647ac6825df0001269471def7eaeb91e3d824404d17c670a2ca6608c459d"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.2.0/inspectarr-linux-x64"
      sha256 "6370e2fc3482e21fb90242cd5be026389f6b98a62c4f53bb27e4fcee87271d22"
    end
  end

  def install
    bin.install Dir["inspectarr-*"].first => "inspectarr"
  end
end
