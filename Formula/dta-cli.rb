class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/dta/releases/download/1.0.13/dta-cli-1.0.13.tar.gz"
  sha256 "1d6c05b5a02ffd65ad702e4737ff844bbf00ff762229643b60dcf06425489b7f"
  license "Apache-2.0"
  version "1.0.13"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
