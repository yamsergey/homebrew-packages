class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.56/dta-cli-0.9.37-SNAPSHOT.56.tar.gz"
  sha256 "4e9bc53c9a3e48a43aa70be1a79ae54caa780d1e44350f42fba8725d769248ee"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.56"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
