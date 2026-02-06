class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.8/dta-cli-0.9.8.tar.gz"
  sha256 "46c577b74ee06fd65f3c5de32474ec73a8ddf3434ecf31a9095f25f7af3c2517"
  license "LGPL-3.0"
  version "0.9.8"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
