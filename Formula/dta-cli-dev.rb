class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.38-SNAPSHOT.71/dta-cli-0.9.38-SNAPSHOT.71.tar.gz"
  sha256 "3fde413c165b9ed152fc5fc702458dfcef9a0b38f8e17ea6753af66c6ea28013"
  license "Apache-2.0"
  version "0.9.38-SNAPSHOT.71"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
