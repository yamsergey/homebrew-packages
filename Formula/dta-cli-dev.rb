class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.29/dta-cli-0.9.37-SNAPSHOT.29.tar.gz"
  sha256 "2e1bf4aa64a9ce83bec332e8a00e4e53bda4f03d8aaf74ba3258452a077c2c6f"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.29"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
