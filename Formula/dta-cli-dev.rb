class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.44/dta-cli-0.9.37-SNAPSHOT.44.tar.gz"
  sha256 "43de0fbde50aba18ee57c8c9fb5464a516c4b959b2e562d16fe4d86cd7916a7b"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.44"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
