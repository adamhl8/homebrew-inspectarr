class Inspectarr < Formula
  desc "CLI tool for querying and inspecting the media in your Radarr and Sonarr instances"
  homepage "https://github.com/adamhl8/inspectarr"
  license "MIT"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.1.0/inspectarr-macos-arm64"
      sha256 "929959b68f1721a1e9218a8e766b3c0fe951a2bda54b719da443700892e15334"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.1.0/inspectarr-macos-x64"
      sha256 "f1ebdfdbf1a65b3c166846fddb59092953140a4a0d0e79b8e5e77f7f67609165"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.1.0/inspectarr-linux-arm64"
      sha256 "6ec6855e4025407a68a6e433d200422f1ff25ca5f8d6a83e65a3077103237c50"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.1.0/inspectarr-linux-x64"
      sha256 "8f8adff30ce9c98cb177e62836bf3e3717ae3bb6ca471bb34854b3f386c04efa"
    end
  end

  def install
    bin.install Dir["inspectarr-*"].first => "inspectarr"
  end
end
