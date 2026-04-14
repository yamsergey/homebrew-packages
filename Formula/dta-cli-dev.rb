class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.36-SNAPSHOT.12/dta-cli-0.9.36-SNAPSHOT.12.tar.gz"
  sha256 "f2289bf20050811ba9cfb0dfaaddabda7ec6337d58fac95f3d63e4616da24503"
  license "Apache-2.0"
  version "0.9.36-SNAPSHOT.12"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
