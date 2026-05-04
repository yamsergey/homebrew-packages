class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.65/dta-cli-0.9.37-SNAPSHOT.65.tar.gz"
  sha256 "a65678581dce7b79795bd87cbddc737a36fdba1c7f3e283167c01f3904c5df13"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.65"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
