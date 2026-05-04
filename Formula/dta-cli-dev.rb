class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.63/dta-cli-0.9.37-SNAPSHOT.63.tar.gz"
  sha256 "8b222841b5b1440c445eea8b8ae006d485b874d54019e0e260013c073eb423e6"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.63"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
