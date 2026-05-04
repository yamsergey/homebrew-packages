class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.59/dta-cli-0.9.37-SNAPSHOT.59.tar.gz"
  sha256 "95b5142828a7e3e6bb1222f1f3aff20a3084642f9b13cdd60181763667f548bb"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.59"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
