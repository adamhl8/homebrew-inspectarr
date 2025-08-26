class Inspectarr < Formula
  desc "CLI tool for querying and inspecting the media in your Radarr and Sonarr instances"
  homepage "https://github.com/adamhl8/inspectarr"
  license "MIT"

  on_linux do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.0.1/inspectarr-linux-arm64"
      sha256 "c04eb0a429cbbb063ddcea9b7ab809ae5d4c41d801db65040cf7e06c39704bef"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.0.1/inspectarr-linux-x64"
      sha256 "85563195312aafe3bf9a463dafc3a014d953a33a5d63276053b229652d359326"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.0.1/inspectarr-macos-arm64"
      sha256 "1d70a53f1c74863518f4dd1e1ac7683921cb7cd48d129627e570c3a11d41a8ed"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.0.1/inspectarr-macos-x64"
      sha256 "62777b0485c40e384c02886310395158fdfc2c72230953aab49574de3d93bcdf"
    end
  end

  def install
    bin.install Dir["inspectarr-*"].first => "inspectarr"
  end
end
