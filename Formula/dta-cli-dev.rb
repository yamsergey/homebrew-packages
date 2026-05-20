class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.40-SNAPSHOT.80/dta-cli-0.9.40-SNAPSHOT.80.tar.gz"
  sha256 "0bd8c4f6708f1252441e5e703eb1aab97b5ad38dc65ba79898ab25d80155a4eb"
  license "Apache-2.0"
  version "0.9.40-SNAPSHOT.80"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
