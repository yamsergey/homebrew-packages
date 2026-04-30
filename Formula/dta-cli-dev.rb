class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.48/dta-cli-0.9.37-SNAPSHOT.48.tar.gz"
  sha256 "7d3b3d97340af3ef7fdecb7f1cd20bb2cbebf28ac1b057e10c0b1ff91a7d8641"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.48"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
