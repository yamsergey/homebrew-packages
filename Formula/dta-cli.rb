class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.16/dta-cli-0.9.16.tar.gz"
  sha256 "693263860fe36b3294035af1ff8ab604d47f1213cd8ceabd4f79d14f82d52fe8"
  license "LGPL-3.0"
  version "0.9.16"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
