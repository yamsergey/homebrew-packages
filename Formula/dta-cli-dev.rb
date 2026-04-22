class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.24/dta-cli-0.9.37-SNAPSHOT.24.tar.gz"
  sha256 "efc79a8d11ae74daaad6a161f7c5c030dae71a2c3456a15ed06c431790824982"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.24"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
