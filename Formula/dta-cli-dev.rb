class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.36-SNAPSHOT.19/dta-cli-0.9.36-SNAPSHOT.19.tar.gz"
  sha256 "da7d9edc46a8ec833f71a4d13ec968f8ea58e505a565c53881bebf1cddfeb0d6"
  license "Apache-2.0"
  version "0.9.36-SNAPSHOT.19"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
