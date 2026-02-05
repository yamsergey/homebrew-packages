class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.5/dta-cli-0.9.5.tar.gz"
  sha256 "ddbed15ee6ca4fbf0a7d61bb6652017935936d91da8a0b65926b751da9dc7df6"
  license "LGPL-3.0"
  version "0.9.5"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
