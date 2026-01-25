class AdtCli < Formula
  desc "Development Tools for Android - CLI (legacy name, use dta-cli instead)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/dta/releases/download/1.0.13/dta-cli-1.0.13.tar.gz"
  sha256 "1d6c05b5a02ffd65ad702e4737ff844bbf00ff762229643b60dcf06425489b7f"
  license "Apache-2.0"
  version "1.0.13"

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
