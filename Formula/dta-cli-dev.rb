class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.38-SNAPSHOT.70/dta-cli-0.9.38-SNAPSHOT.70.tar.gz"
  sha256 "9f1a881a931256765a173fe739b55867cb08870ab8f7807f3ac77b74cc448b5b"
  license "Apache-2.0"
  version "0.9.38-SNAPSHOT.70"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
