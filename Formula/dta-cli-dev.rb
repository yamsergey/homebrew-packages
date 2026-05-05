class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.66/dta-cli-0.9.37-SNAPSHOT.66.tar.gz"
  sha256 "f83dda43366dd6277c640ac5213a52da785759e065a1783d71e2d617ca2b11f4"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.66"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
