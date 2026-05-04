class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.64/dta-cli-0.9.37-SNAPSHOT.64.tar.gz"
  sha256 "b7c0afe534fdf38b1fe2accbe44c5782925d5e42af379c11fd6326a42f8dedf6"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.64"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
