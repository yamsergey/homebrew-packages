class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.38-SNAPSHOT.72/dta-cli-0.9.38-SNAPSHOT.72.tar.gz"
  sha256 "c1145edd12a391f437511f79e61664f55692f0918d111ff26bbbaa173e87457f"
  license "Apache-2.0"
  version "0.9.38-SNAPSHOT.72"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
