class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.7/dta-cli-0.9.7.tar.gz"
  sha256 "2d526959c3f502cc6ce92227020ffd0a414c3437eeff114c2a101816cc503a3e"
  license "LGPL-3.0"
  version "0.9.7"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
