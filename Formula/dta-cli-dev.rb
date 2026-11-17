class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.131/dta-cli-0.10.0-SNAPSHOT.131.tar.gz"
  sha256 "ff4d5b205ce52602fd532618c278cb2da87fbf1d3f86670ef9ca1aae0ba2185b"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.131"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.131", shell_output("#{bin}/dta --version")
  end
end
