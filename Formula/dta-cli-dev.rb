class DtaCliDev < Formula
  desc "Development Tools for Android - CLI (SNAPSHOT/dev channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.9.37-SNAPSHOT.46/dta-cli-0.9.37-SNAPSHOT.46.tar.gz"
  sha256 "da7256f33304179c089be07995c4c8a8dffe2df080e7ffbd8ea8257a00219fca"
  license "Apache-2.0"
  version "0.9.37-SNAPSHOT.46"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dta-cli"
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/dta-cli --version")
  end
end
