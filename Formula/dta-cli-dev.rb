class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.47/dta-cli-0.9.37-SNAPSHOT.47.tar.gz"
  sha256 "ef6729e5b54684070d02c02646f0dc191b0ca3853777629029fb8142bd7a328c"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.47"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
