class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.22/dta-cli-0.9.22.tar.gz"
  sha256 "eaa9b8444962807b39a49ec9d1d7403d66f64af43fad14aae40773952a43c160"
  license "LGPL-3.0"
  version "0.9.22"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
