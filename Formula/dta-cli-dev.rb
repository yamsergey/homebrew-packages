class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.39/dta-cli-0.9.37-SNAPSHOT.39.tar.gz"
  sha256 "0b2069005256f249be755e62bf26fd9b34c4bb574af8c59f987c7bb41c108bf8"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.39"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
