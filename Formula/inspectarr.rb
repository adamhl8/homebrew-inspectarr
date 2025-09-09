class Inspectarr < Formula
  desc "CLI tool for querying and inspecting the media in your Radarr and Sonarr instances"
  homepage "https://github.com/adamhl8/inspectarr"
  license "MIT"
  version "1.3.0"

  on_macos do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.0/inspectarr-macos-arm64"
      sha256 "6dd08523b2f600ab6458694dcd9b637dac106aca571b10e99da1eff00392cd7f"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.0/inspectarr-macos-x64"
      sha256 "4bb299be8d2d0a0b78c72c931fbd1b24c13e10c5c7d75cfdd323fa6ee2aa2bfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.0/inspectarr-linux-arm64"
      sha256 "c5614d463975ed21ab8d69450e9b624110a593e550141f9b7b0cc7e5b5de8df9"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.0/inspectarr-linux-x64"
      sha256 "5145237a556a2975f62720dac763f77acbe72ad70013255a2c64a943e2e7da4b"
    end
  end

  def install
    bin.install Dir["inspectarr-*"].first => "inspectarr"
  end
end
