class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.40-SNAPSHOT.75/dta-cli-0.9.40-SNAPSHOT.75.tar.gz"
  sha256 "d4573de09d5af73f3a24340c50b8f75ce33d49f09b4b908eea6f47d6bc2cb5e4"
  license "Apache-2.0"
  version "0.9.40-SNAPSHOT.75"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
