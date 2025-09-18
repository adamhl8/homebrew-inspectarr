class Inspectarr < Formula
  desc "CLI tool for querying and inspecting the media in your Radarr and Sonarr instances"
  homepage "https://github.com/adamhl8/inspectarr"
  license "MIT"
  version "1.3.1"

  on_macos do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.1/inspectarr-macos-arm64"
      sha256 "f2297f375721066dee4147518889a55c64ae392ecafdde480796a786ccc03ac3"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.1/inspectarr-macos-x64"
      sha256 "7ce9cb473a52fe067bd715f7842bcd917ca61bb0bc59678bb062c2ad0c7629cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.1/inspectarr-linux-arm64"
      sha256 "31ee69708654752f0565ada6c9389502ad5f7afdd7bf19a7855a0b22d8a939b8"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.1/inspectarr-linux-x64"
      sha256 "23452d1232edd3e7b85a76d1d46263e02d92e196ff96451e862f81c12b9aa9f5"
    end
  end

  def install
    bin.install Dir["inspectarr-*"].first => "inspectarr"
  end
end
