class Inspectarr < Formula
  desc "CLI tool for querying and inspecting the media in your Radarr and Sonarr instances"
  homepage "https://github.com/adamhl8/inspectarr"
  license "MIT"

  on_linux do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.0.0/inspectarr-linux-arm64"
      sha256 "c7ff21b9d1d17e34e29925457adf7f9fd9e85acb3f99602869c2b51cc8f213b7"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.0.0/inspectarr-linux-x64"
      sha256 "6937011173f2cbbe67552f7792defcf50560c0013619ace75b413e578852e022"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.0.0/inspectarr-macos-arm64"
      sha256 "2fa001960cf3d111c2e0d39a49edaac141dc55eeee9ef6824f3907a993ab24b2"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.0.0/inspectarr-macos-x64"
      sha256 "1796373bb991289dd775704cc402edeac16249a863a9b9f61be10fb6d0f11629"
    end
  end

  def install
    bin.install Dir["inspectarr-*"].first => "inspectarr"
  end
end
