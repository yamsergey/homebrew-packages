class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.32/dta-cli-0.9.32.tar.gz"
  sha256 "31e0c4c8892e24cb7ee10623e2a39f85b1d9fc154ac95db422c3b0f1e07d2dc8"
  license "Apache-2.0"
  version "0.9.32"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
