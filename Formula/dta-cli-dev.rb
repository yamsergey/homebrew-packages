class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.22/dta-cli-0.9.37-SNAPSHOT.22.tar.gz"
  sha256 "63725170444eafe695c26dc8a2c77a7d18ff154fc5278ebb847fcf74f933bbfe"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.22"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
