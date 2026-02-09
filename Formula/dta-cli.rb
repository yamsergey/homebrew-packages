class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.10/dta-cli-0.9.10.tar.gz"
  sha256 "02187a2fa89253892e2e7f7628393749f10a0e2a0a22dc8dfcd0931120a2a0ed"
  license "LGPL-3.0"
  version "0.9.10"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
