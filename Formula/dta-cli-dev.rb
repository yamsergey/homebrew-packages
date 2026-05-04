class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.60/dta-cli-0.9.37-SNAPSHOT.60.tar.gz"
  sha256 "aacb7194a67a7dd2b450d6a1d4a8c6b8912b449190a0eebde76ffcdaeeb3feac"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.60"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
