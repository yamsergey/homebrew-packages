class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/dta/releases/download/1.0.12/dta-cli-1.0.12.tar.gz"
  sha256 "06fe918ac1b6b9c164915ca118458bd8b9ce3d5a8be3c3c8895102a958644e12"
  license "Apache-2.0"
  version "1.0.12"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
