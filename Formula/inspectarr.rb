class Inspectarr < Formula
  desc "CLI tool for querying and inspecting the media in your Radarr and Sonarr instances"
  homepage "https://github.com/adamhl8/inspectarr"
  license "MIT"
  version "1.3.4"

  on_macos do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.4/inspectarr-macos-arm64"
      sha256 "78a3aabd4cad35ef2281eaedbf6517652b116a871da52cb77009bf7673355691"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.4/inspectarr-macos-x64"
      sha256 "d8dd64cde588e4a8ef3123c0696d9c67f70a1c899e2bb5fe07e21c436c915314"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.4/inspectarr-linux-arm64"
      sha256 "6b66edcbe560d330679d10eaad098d86c7f8312717a217846829e4c2f9d9c344"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.3.4/inspectarr-linux-x64"
      sha256 "bd6edb61065d7b705004e1a8193286d8e897b64f7a5efba24619bd5dce16ff8e"
    end
  end

  def install
    bin.install Dir["inspectarr-*"].first => "inspectarr"
  end
end
