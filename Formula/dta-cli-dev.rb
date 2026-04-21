class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.21/dta-cli-0.9.37-SNAPSHOT.21.tar.gz"
  sha256 "e420b9a263db4c2824fb7df12dd025092809e2d24393f2df3f3e439ddabe53d7"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.21"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
