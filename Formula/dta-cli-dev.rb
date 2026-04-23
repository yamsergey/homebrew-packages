class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.27/dta-cli-0.9.37-SNAPSHOT.27.tar.gz"
  sha256 "09921a20e9cb7c09d8ff3066d5458ae306731820da2215ec6438046465977233"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.27"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
