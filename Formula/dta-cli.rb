class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.20/dta-cli-0.9.20.tar.gz"
  sha256 "0f6ce7f21bc40b99ffb6b6cf6cbfa351ce40c46c66aac3403e4edad4416d17c4"
  license "LGPL-3.0"
  version "0.9.20"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
