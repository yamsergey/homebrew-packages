class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.36-SNAPSHOT.15/dta-cli-0.9.36-SNAPSHOT.15.tar.gz"
  sha256 "4a9daebcb9c9c6b95a52fbbfd0a24025d91e2831599e20bfe1224134a3659e03"
  license "Apache-2.0"
  version "0.9.36-SNAPSHOT.15"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
