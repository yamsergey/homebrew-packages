class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.36-SNAPSHOT.10/dta-cli-0.9.36-SNAPSHOT.10.tar.gz"
  sha256 "3779d0a0088621f66949037841c4e1c38161378d4c4be91f66184e4e9603ac27"
  license "Apache-2.0"
  version "0.9.36-SNAPSHOT.10"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
