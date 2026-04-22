class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.26/dta-cli-0.9.37-SNAPSHOT.26.tar.gz"
  sha256 "31139afec2b971fd2c1870fd3bd389368cf9bea80a90e79573ab085382e93a1d"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.26"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
