class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.52/dta-cli-0.9.37-SNAPSHOT.52.tar.gz"
  sha256 "8ea16c10e00e6c3f7c66e747519aeb2cf6c3fcceca6089eedf2db276e03ec8b1"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.52"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
