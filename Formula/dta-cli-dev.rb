class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.49/dta-cli-0.9.37-SNAPSHOT.49.tar.gz"
  sha256 "0a8844d479106a2b01e8aa3c0b75963b7f813068f43f40cac0590128efe9698b"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.49"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
