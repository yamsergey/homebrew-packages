class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.36/dta-cli-0.9.37-SNAPSHOT.36.tar.gz"
  sha256 "5ee0a2f35bee4a9585d7e6e3ddda9e15233ff23786e155b1ce8ac93666310190"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.36"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
