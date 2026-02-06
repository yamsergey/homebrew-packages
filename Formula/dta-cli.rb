class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.8/dta-cli-0.9.8.tar.gz"
  sha256 "da5b3d9070d15278afa40c1abcffc7acb2a012b8697d4dcae4897357152311bb"
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
