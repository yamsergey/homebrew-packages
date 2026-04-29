class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.45/dta-cli-0.9.37-SNAPSHOT.45.tar.gz"
  sha256 "73b1798c2c4b6bb9ee309996d522d8eee07bc27db7b51255ddd75434d11bfc43"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.45"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
