class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.36-SNAPSHOT.6/dta-cli-0.9.36-SNAPSHOT.6.tar.gz"
  sha256 "ab88ee550b85ffc66051c61218a1061da01be3edfefaf770494b1adb5bbd7804"
  license "Apache-2.0"
  version "0.9.36-SNAPSHOT.6"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
