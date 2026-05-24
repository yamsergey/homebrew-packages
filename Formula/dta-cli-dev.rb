class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.40-SNAPSHOT.81/dta-cli-0.9.40-SNAPSHOT.81.tar.gz"
  sha256 "662dbd83ae5d68033969424538e352698deefd09c3e1d1a6728778bc42276363"
  license "Apache-2.0"
  version "0.9.40-SNAPSHOT.81"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
