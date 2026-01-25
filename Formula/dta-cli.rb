class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/dta/releases/download/1.0.14/dta-cli-1.0.14.tar.gz"
  sha256 "72db1abe21d762996b0680565e38c78e691bb8103b4ff9f1155e27e64f320d89"
  license "LGPL-3.0"
  version "1.0.14"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
