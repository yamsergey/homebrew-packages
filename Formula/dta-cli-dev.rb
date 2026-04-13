class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.36-SNAPSHOT.5/dta-cli-0.9.36-SNAPSHOT.5.tar.gz"
  sha256 "ceac03d02edb795316c11d17be76040d0e570522fff27b91ada3225e17ce3163"
  license "Apache-2.0"
  version "0.9.36-SNAPSHOT.5"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
