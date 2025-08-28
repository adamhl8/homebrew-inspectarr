class Inspectarr < Formula
  desc "CLI tool for querying and inspecting the media in your Radarr and Sonarr instances"
  homepage "https://github.com/adamhl8/inspectarr"
  license "MIT"
  version "1.1.1"

  on_macos do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.1.1/inspectarr-macos-arm64"
      sha256 "39865868f9401c38ce5bad7234d47c35fffeb60dbc160cea508a5b960342207f"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.1.1/inspectarr-macos-x64"
      sha256 "7465fcb9a0b8caac46c893435e8c4b415f1356e093e563654c90d434d5aeead6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.1.1/inspectarr-linux-arm64"
      sha256 "bd05edd98eca0bfd18610bf2cf8fe0086ad32d0850a58cee7fece9fc10e26c7e"
    end
    on_intel do
      url "https://github.com/adamhl8/inspectarr/releases/download/v1.1.1/inspectarr-linux-x64"
      sha256 "a2d71ba5f57d04dc58e898b1cc47566458688b8523d03c87fddc07e316cd685c"
    end
  end

  def install
    bin.install Dir["inspectarr-*"].first => "inspectarr"
  end
end
