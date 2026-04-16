class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.36-SNAPSHOT.17/dta-cli-0.9.36-SNAPSHOT.17.tar.gz"
  sha256 "981c9a292aa3078280639b5cabd0a09cd32c493ea41318c2432dc59332d81c62"
  license "Apache-2.0"
  version "0.9.36-SNAPSHOT.17"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
