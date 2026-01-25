class DtaCli < Formula
  desc "Development Tools for Android - CLI for project analysis, workspace generation, and device inspection"
  homepage "https://github.com/yamsergey/yamsergey.dta"
  # Note: Uses adt-cli tarball until next release generates dta-cli tarball
  url "https://github.com/yamsergey/yamsergey.dta/releases/download/1.0.8/adt-cli-1.0.8.tar.gz"
  sha256 "803cdcb43073b77d3e8123719ad0ccea8af9aefa0cf0f07754c20bb873a04fec"
  license "Apache-2.0"
  version "1.0.8"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    # The tarball contains adt-cli binary, symlink it as dta-cli
    bin.install_symlink libexec/"bin/adt-cli" => "dta-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dta-cli --version", 1)
  end
end
