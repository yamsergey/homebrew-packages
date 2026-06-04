class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.40-SNAPSHOT.84/dta-cli-0.9.40-SNAPSHOT.84.tar.gz"
  sha256 "56a96fa40d78856208d060009925639800619951c9571d1a1cb2ee5f38bafe05"
  license "Apache-2.0"
  version "0.9.40-SNAPSHOT.84"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
