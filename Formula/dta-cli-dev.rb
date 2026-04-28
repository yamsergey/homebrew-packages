class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.41/dta-cli-0.9.37-SNAPSHOT.41.tar.gz"
  sha256 "c32b9adedec98ca9564eae0aee72c1f3de31fff370d30e67a8ff152c6d5f2d5e"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.41"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
