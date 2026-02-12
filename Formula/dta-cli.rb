class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.18/dta-cli-0.9.18.tar.gz"
  sha256 "62ca3b645d2829afc66e9f45f7374bfbbc4be12d2d56a2f190687b617c6a4197"
  license "LGPL-3.0"
  version "0.9.18"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
