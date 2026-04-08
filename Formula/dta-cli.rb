class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.33/dta-cli-0.9.33.tar.gz"
  sha256 "fd780bc152bb42050e5c380b94013f5f9691f6ed180024c7ebd8d758185d6e54"
  license "Apache-2.0"
  version "0.9.33"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
