class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.55/dta-cli-0.9.37-SNAPSHOT.55.tar.gz"
  sha256 "764e8cda69d4edb2a03ea8364c8aa5ebc6f3e3097d3d53917aa70670f0d907af"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.55"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
