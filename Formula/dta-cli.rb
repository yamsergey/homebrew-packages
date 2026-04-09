class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.34/dta-cli-0.9.34.tar.gz"
  sha256 "bf14c2aea2c36e1930fef2ebc43ea6dff48880c0efa61fb2420e4bd54d8d1be9"
  license "Apache-2.0"
  version "0.9.34"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
