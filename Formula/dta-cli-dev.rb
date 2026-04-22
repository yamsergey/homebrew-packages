class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.25/dta-cli-0.9.37-SNAPSHOT.25.tar.gz"
  sha256 "f19eb97443336726575dba6f713b2f376b002b883dbcdfda29c70c7232e706f2"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.25"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
