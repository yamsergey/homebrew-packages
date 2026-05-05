class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.68/dta-cli-0.9.37-SNAPSHOT.68.tar.gz"
  sha256 "2da7891c2226e4a5cc0410a592f116e0f2dae4d11d0c797b3dd8245a5c67e52a"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.68"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
