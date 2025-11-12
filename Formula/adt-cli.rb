class AdtCli < Formula
  desc "Android Development Tools - CLI for Android project analysis and workspace generation"
  homepage "https://github.com/yamsergey/yamsergey.adt"
  url "https://github.com/yamsergey/yamsergey.adt/releases/download/1.0.5/adt-cli-1.0.5.tar.gz"
  sha256 "97a107a050de3d4e44f937674ac910c097cccd7448f7a441d2852ee3c281e0d6"
  license "Apache-2.0"
  version "1.0.5"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/adt-cli"
  end

  test do
    assert_match "adt-cli", shell_output("#{bin}/adt-cli --version")
  end
end
