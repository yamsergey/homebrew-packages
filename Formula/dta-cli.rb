class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.29/dta-cli-0.9.29.tar.gz"
  sha256 "864d69ddcc0f4ae9fbca2d8bf815336c645b5c8d4d41fca34a37d4fd37f97667"
  license "Apache-2.0"
  version "0.9.29"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
