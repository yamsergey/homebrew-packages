class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.38-SNAPSHOT.69/dta-cli-0.9.38-SNAPSHOT.69.tar.gz"
  sha256 "b149c422d56c4675a1676e2a3a8f5903ff5d286b1eed34f1e14077e93bb5e826"
  license "Apache-2.0"
  version "0.9.38-SNAPSHOT.69"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
