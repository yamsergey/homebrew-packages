class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.57/dta-cli-0.9.37-SNAPSHOT.57.tar.gz"
  sha256 "884219237ef98143fbe2e9e3a872021589089c84c367a1e970329792ead1ec4c"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.57"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
