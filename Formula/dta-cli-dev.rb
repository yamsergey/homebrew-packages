class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.23/dta-cli-0.9.37-SNAPSHOT.23.tar.gz"
  sha256 "ae4474805b7c024d384a7c86f8cab9e8b9a5e1765c442d14f6c24f190e8dfc10"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.23"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
