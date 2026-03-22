class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.28/dta-cli-0.9.28.tar.gz"
  sha256 "063e580d0389f63460e007e61eef246209b205c26e10c75edfc25b41bf2bb07c"
  license "Apache-2.0"
  version "0.9.28"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
