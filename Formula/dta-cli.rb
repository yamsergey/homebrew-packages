class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/yamsergey.dta"
  url "https://github.com/yamsergey/yamsergey.dta/releases/download/1.0.9/dta-cli-1.0.9.tar.gz"
  sha256 "6b65f2607b4e5160fc77dff6419889c4ae546b4f996963ea981d7852269788cc"
  license "Apache-2.0"
  version "1.0.9"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
