class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.36-SNAPSHOT.20/dta-cli-0.9.36-SNAPSHOT.20.tar.gz"
  sha256 "a8a72503cb4db9be51315746495bfd990f5220961227b544e6316320455d4232"
  license "Apache-2.0"
  version "0.9.36-SNAPSHOT.20"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
