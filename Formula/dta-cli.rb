class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.25/dta-cli-0.9.25.tar.gz"
  sha256 "4ec04a3de91ac523b7dd25a8adfd17ffcd5ab1bb6ab257b62564071be7ea2351"
  license "LGPL-3.0"
  version "0.9.25"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
