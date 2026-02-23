class AdtCli < Formula
  desc "Development Tools for Android - CLI (legacy name, use dta-cli instead)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-0.9.26/dta-cli-0.9.26.tar.gz"
  sha256 "1a6ef54ff0c173af912c344a8c429a917e86a88876023272778b9100cf869314"
  license "LGPL-3.0"
  version "0.9.26"

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
