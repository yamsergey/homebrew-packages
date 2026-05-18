class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.40-SNAPSHOT.76/dta-cli-0.9.40-SNAPSHOT.76.tar.gz"
  sha256 "14bda5090271c763a7ece2cda65ee6f7cb666e6f22451d613a28fce462310682"
  license "Apache-2.0"
  version "0.9.40-SNAPSHOT.76"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
