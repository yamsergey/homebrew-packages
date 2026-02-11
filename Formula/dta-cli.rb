class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.14/dta-cli-0.9.14.tar.gz"
  sha256 "5eabf987d020d0d758767e84d809366795ca5ecfcb851307c65df3e8a8e9791f"
  license "LGPL-3.0"
  version "0.9.14"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
