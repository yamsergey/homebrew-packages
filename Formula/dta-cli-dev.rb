class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.23-dev.1/dta-cli-0.9.23-dev.1.tar.gz"
  sha256 "fed803a91d79b423db1121ec9d5370b4ac3f420c539d0a192bc1e8cc55d75985"
  license "LGPL-3.0"
  version "0.9.23-dev.1"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
