class AdtCli < Formula
  desc "Development Tools for Android - CLI (legacy name, use dta-cli instead)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.13/dta-cli-0.9.13.tar.gz"
  sha256 "a9accd65c27900cea1eb599987d02efd5b1d5504db659926f2f880d2457a326e"
  license "LGPL-3.0"
  version "0.9.13"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    # Install both dta-cli and adt-cli symlinks for compatibility
    bin.install_symlink libexec/"bin/dta-cli"
    bin.install_symlink libexec/"bin/dta-cli" => "adt-cli"
  end

  def caveats
    <<~EOS
      Note: adt-cli is the legacy name. Consider using dta-cli instead:
        brew install dta-cli
    EOS
  end

  test do
    assert_match "dta-cli", shell_output("#{bin}/adt-cli --version")
  end
end
