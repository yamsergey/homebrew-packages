class AdtCli < Formula
  desc "Android Development Tools - CLI for Android project analysis and workspace generation"
  homepage "https://github.com/yamsergey/yamsergey.adt"
  url "https://github.com/yamsergey/yamsergey.adt/releases/download/1.0.6/adt-cli-1.0.6.tar.gz"
  sha256 "18481173740382cbe46c8474781653dd9927c57101aadd9175b79773718f4f9f"
  license "Apache-2.0"
  version "1.0.6"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/adt-cli"
  end

  test do
    assert_match "adt-cli", shell_output("#{bin}/adt-cli --version")
  end
end
