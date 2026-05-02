class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.53/dta-cli-0.9.37-SNAPSHOT.53.tar.gz"
  sha256 "3136f0f89cf6ad0c40b047b3ead5df0eb1397f3ab754a5ddf77667392b331d63"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.53"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
