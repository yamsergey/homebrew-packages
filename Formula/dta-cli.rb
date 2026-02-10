class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.12/dta-cli-0.9.12.tar.gz"
  sha256 "7c71c5f3d7f49358b6c2e7b97a69d67bd21c0436489f5f2b74ce63326ac4cc67"
  license "LGPL-3.0"
  version "0.9.12"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
