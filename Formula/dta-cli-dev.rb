class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.40-SNAPSHOT.82/dta-cli-0.9.40-SNAPSHOT.82.tar.gz"
  sha256 "f3a407ed0997c61adb0efa4087d83ca963a6f22d1ec84479f4735ee1594d9403"
  license "Apache-2.0"
  version "0.9.40-SNAPSHOT.82"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
