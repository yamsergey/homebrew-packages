class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.33/dta-cli-0.9.37-SNAPSHOT.33.tar.gz"
  sha256 "1c40b13f948a033c3becf36efac35ad794793bce92b9a47af9d0e3f78297d1b3"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.33"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
