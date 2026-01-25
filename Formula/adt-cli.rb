class AdtCli < Formula
  desc "Development Tools for Android - CLI (legacy name, use dta-cli instead)"
  homepage "https://github.com/yamsergey/yamsergey.dta"
  url "https://github.com/yamsergey/yamsergey.dta/releases/download/1.0.8/adt-cli-1.0.8.tar.gz"
  sha256 "803cdcb43073b77d3e8123719ad0ccea8af9aefa0cf0f07754c20bb873a04fec"
  license "Apache-2.0"
  version "1.0.8"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/adt-cli"
  end

  def caveats
    <<~EOS
      Note: adt-cli is the legacy name. Consider using dta-cli instead:
        brew install dta-cli
    EOS
  end

  test do
    assert_match "adt-cli", shell_output("#{bin}/adt-cli --version")
  end
end
