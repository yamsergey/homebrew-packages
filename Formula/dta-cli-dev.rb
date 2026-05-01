class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.50/dta-cli-0.9.37-SNAPSHOT.50.tar.gz"
  sha256 "894d66f0ba0d03fd372c0d332f4f27d7c35c81f26b5e8ad92ae5a25a9e10301e"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.50"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
