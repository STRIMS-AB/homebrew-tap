# bbrun: scripts that call services as black boxes. https://bbrun.org
# Written by dist/formula.sh of STRIMS-AB/bbrun for the release v1.0.0: do not edit.
class Bbrun < Formula
  desc "Scripting language for calling services: test scenarios and orchestration"
  homepage "https://bbrun.org"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/STRIMS-AB/bbrun/releases/download/v1.0.0/bbrun-1.0.0-macos-arm64.tar.gz"
      sha256 "9bc2b1f041b8e788145c7234dc81c08520ae9be6c5660ba206965e5d7741a7ac"
    end
    on_intel do
      url "https://github.com/STRIMS-AB/bbrun/releases/download/v1.0.0/bbrun-1.0.0-macos-x64.tar.gz"
      sha256 "c4b4c63c7e83d4543e4a7afc563ab789679e12dfc7c3d3be493c155d7ed20f7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/STRIMS-AB/bbrun/releases/download/v1.0.0/bbrun-1.0.0-linux-arm64.tar.gz"
      sha256 "3a0cac2a8dbcf93d1be3f9f70552efc7c4c2f30b443b4f7b73a1ac4f42db6229"
    end
    on_intel do
      url "https://github.com/STRIMS-AB/bbrun/releases/download/v1.0.0/bbrun-1.0.0-linux-x64.tar.gz"
      sha256 "a3e064fe776744d1cb3b54759e1d4a4ad0de9c099247e6630d5acb821bcdcf44"
    end
  end

  def install
    bin.install "bbrun"
  end

  test do
    assert_match "bbrun #{version}", shell_output("#{bin}/bbrun --version")
  end
end
