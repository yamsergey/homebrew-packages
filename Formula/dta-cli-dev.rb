class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.36-SNAPSHOT.9/dta-cli-0.9.36-SNAPSHOT.9.tar.gz"
  sha256 "84b249d0f837b913ab31beb9cb5427c5aade57db2cc9775112e9e57149d2056e"
  license "Apache-2.0"
  version "0.9.36-SNAPSHOT.9"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
