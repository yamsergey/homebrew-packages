class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.31/dta-cli-0.9.37-SNAPSHOT.31.tar.gz"
  sha256 "a47f617e570b8d3e963e868ab081f6cf1398acf050a5a581cb2838c7b8043979"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.31"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
