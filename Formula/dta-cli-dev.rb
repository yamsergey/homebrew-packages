class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.51/dta-cli-0.9.37-SNAPSHOT.51.tar.gz"
  sha256 "e0f6a44633c2d7e122b43fae7f8b65ef49edd1f8674d7d90b37ad615e61d477e"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.51"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
