class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.36-SNAPSHOT.13/dta-cli-0.9.36-SNAPSHOT.13.tar.gz"
  sha256 "b769f03c98e5be3a5c151b38bea9bf8ab7136c8a734383b54eeb2fa9bae73286"
  license "Apache-2.0"
  version "0.9.36-SNAPSHOT.13"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
