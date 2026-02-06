class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.9/dta-cli-0.9.9.tar.gz"
  sha256 "395f0049f0ec4fa2e9fbac8227cdc1b24957fc63788e544b84405be8c38fe971"
  license "LGPL-3.0"
  version "0.9.9"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
