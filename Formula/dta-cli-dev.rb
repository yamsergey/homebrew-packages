class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.43/dta-cli-0.9.37-SNAPSHOT.43.tar.gz"
  sha256 "c0659300cb0651d8ebf25aab4677e24c2c9d53a6d0a59cb03799109865de8b1d"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.43"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
