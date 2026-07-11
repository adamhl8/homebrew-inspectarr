class Inspectarr < Formula
  desc "CLI tool for querying and inspecting the media in your Radarr and Sonarr instances"
  homepage "https://github.com/adamhl8/inspectarr"
  license "MIT"
  version "1.3.3"

  on_macos do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.3/inspectarr-macos-arm64"
      sha256 "10d5b74d75178d341584e8195553e3802d90ce8c4c7af1cbea8a4e3a47ed0cc2"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.3/inspectarr-macos-x64"
      sha256 "a1705b97b38c86c687fb04fcdb58d9e9349c11d5b7dc1a7e33b7efd7f68bad08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.3/inspectarr-linux-arm64"
      sha256 "499c6a6e31d7d117cf28d51923d67d651ca90aaae724e3c4c33b9b393af30912"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.3/inspectarr-linux-x64"
      sha256 "50a876bac61496a6a9a6d5a4062471806d768131921f346f79e66487dd71c407"
    end
  end

  def install
    bin.install Dir["inspectarr-*"].first => "inspectarr"
  end
end
