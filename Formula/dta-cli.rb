class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.2/dta-cli-0.9.2.tar.gz"
  sha256 "9a0d6990b09c980ae47c39040c12747cb174f8b169213f0edb527af2cc4e957a"
  license "LGPL-3.0"
  version "0.9.2"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
