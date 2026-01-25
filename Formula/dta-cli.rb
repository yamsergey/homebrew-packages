class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/dta/releases/download/0.9.1/dta-cli-0.9.1.tar.gz"
  sha256 "3e7e899a26f7ff5029be3236f5d0c9c3e98ba777ac3ffba21c233f5df3237b08"
  license "LGPL-3.0"
  version "0.9.1"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
