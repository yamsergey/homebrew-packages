class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.35/dta-cli-0.9.37-SNAPSHOT.35.tar.gz"
  sha256 "6b8e11d0fde359b862265ac781b2c1c41718cbfba67c99d4e6bb67d2c2f918fc"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.35"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
