class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.40-SNAPSHOT.78/dta-cli-0.9.40-SNAPSHOT.78.tar.gz"
  sha256 "6886575ebc50fc8c92f84941b65dff36f4bb5c047885c19c847da997de8aab11"
  license "Apache-2.0"
  version "0.9.40-SNAPSHOT.78"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
