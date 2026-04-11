class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.35/dta-cli-0.9.35.tar.gz"
  sha256 "c4fa3129ca6765a7c3723a02216a6872f7ee1db6e018d28d5aaff60afc34e9de"
  license "Apache-2.0"
  version "0.9.35"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
