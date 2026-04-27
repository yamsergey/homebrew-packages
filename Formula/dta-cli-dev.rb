class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.40/dta-cli-0.9.37-SNAPSHOT.40.tar.gz"
  sha256 "89d7101e936ce6cf9c2c4408c4667b0cbbb298843370ab7bda6bc231b9921369"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.40"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
