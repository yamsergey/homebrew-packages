class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.30/dta-cli-0.9.37-SNAPSHOT.30.tar.gz"
  sha256 "6b90fc0a322cda3c71ad16123fe73824c151b2d4f15beafac75a985b30a3ddb3"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.30"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
