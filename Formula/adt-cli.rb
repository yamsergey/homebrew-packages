class AdtCli < Formula
  desc "Android Development Tools - CLI for Android project analysis and workspace generation"
  homepage "https://github.com/yamsergey/yamsergey.adt"
  url "https://github.com/yamsergey/yamsergey.adt/releases/download/1.0.7/adt-cli-1.0.7.tar.gz"
  sha256 "919c4a7e69592a74ec18e2ab460ba56d7297873d351207ba69777406d431015b"
  license "Apache-2.0"
  version "1.0.7"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/adt-cli"
  end

  test do
    assert_match "adt-cli", shell_output("#{bin}/adt-cli --version")
  end
end
