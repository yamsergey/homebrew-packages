class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.39-SNAPSHOT.73/dta-cli-0.9.39-SNAPSHOT.73.tar.gz"
  sha256 "805cd5bd3ae88f67ec1f9fee6e05320ae65a730002317af9d0efbf1e3caf35e9"
  license "Apache-2.0"
  version "0.9.39-SNAPSHOT.73"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
