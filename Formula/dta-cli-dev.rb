class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.58/dta-cli-0.9.37-SNAPSHOT.58.tar.gz"
  sha256 "030924f19063d52687302ba99b3bdfd9b6a5b78b9cefadd651cbfb3c1df7f398"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.58"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
