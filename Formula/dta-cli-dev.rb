class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.54/dta-cli-0.9.37-SNAPSHOT.54.tar.gz"
  sha256 "dde4190a528577733e91bee2e42c6214f6e5caaedbd69f44a7cb9d08a3ef5044"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.54"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
