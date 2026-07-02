class Inspectarr < Formula
  desc "CLI tool for querying and inspecting the media in your Radarr and Sonarr instances"
  homepage "https://github.com/adamhl8/inspectarr"
  license "MIT"
  version "1.3.2"

  on_macos do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.2/inspectarr-macos-arm64"
      sha256 "d7a84e330b28f190069c21163b3e8dd3d6e45adc1b391d44bb784bf65dc82282"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.2/inspectarr-macos-x64"
      sha256 "2e804100641006f9bc183e1fc749939b7a63ff756deacfde9a3b1ebe3940e101"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.2/inspectarr-linux-arm64"
      sha256 "d4a1da8de5e104f8aaf89bb9ab493cc81d6a352bd7c1556e4b3221918749c86a"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.2/inspectarr-linux-x64"
      sha256 "84e868fa35e31410758a0acb40fb6ab36311919b8a76fde56adadd20df4f10f3"
    end
  end

  def install
    bin.install Dir["inspectarr-*"].first => "inspectarr"
  end
end
