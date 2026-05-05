class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.37/dta-cli-0.9.37.tar.gz"
  sha256 "09f17a9ee58d7d24496cddca4fb36f5ab4a0e0a53aa39158047a69fe434b0710"
  license "Apache-2.0"
  version "0.9.37"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
