class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.36-SNAPSHOT.16/dta-cli-0.9.36-SNAPSHOT.16.tar.gz"
  sha256 "4a33bddf777bc672b025636057b1fafa7251a276fd4be72c8bf6138c83ea305e"
  license "Apache-2.0"
  version "0.9.36-SNAPSHOT.16"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
