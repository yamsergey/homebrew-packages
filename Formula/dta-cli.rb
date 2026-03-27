class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.30/dta-cli-0.9.30.tar.gz"
  sha256 "3fbc3349c4dafa53db52bf8aa4e19ebce14397380388b140c6cf325fab3db71a"
  license "Apache-2.0"
  version "0.9.30"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
