class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.40-SNAPSHOT.77/dta-cli-0.9.40-SNAPSHOT.77.tar.gz"
  sha256 "dba6b6e1f6e5988e03037b99157cfa9d0dc6e32f18281533fb1c20f9a8ceeabe"
  license "Apache-2.0"
  version "0.9.40-SNAPSHOT.77"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
