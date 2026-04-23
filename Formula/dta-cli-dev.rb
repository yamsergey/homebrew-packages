class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.28/dta-cli-0.9.37-SNAPSHOT.28.tar.gz"
  sha256 "4bec1e8677ecb62e5f013a55739994ccdd86b86a794fc3753a0419bd4c1297e9"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.28"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
