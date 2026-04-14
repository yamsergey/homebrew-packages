class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.36-SNAPSHOT.11/dta-cli-0.9.36-SNAPSHOT.11.tar.gz"
  sha256 "9dc979efd9a365e9feb3b3702ae7a34f3b2fbe6cb99389c1649d096df0d08c67"
  license "Apache-2.0"
  version "0.9.36-SNAPSHOT.11"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
