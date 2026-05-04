class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.62/dta-cli-0.9.37-SNAPSHOT.62.tar.gz"
  sha256 "8467a0b22245e028f77f524978ad53950e43d0c588880c7850f41cf1f3e8ad58"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.62"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
