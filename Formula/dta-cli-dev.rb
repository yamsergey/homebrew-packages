class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.111/dta-cli-0.10.0-SNAPSHOT.111.tar.gz"
  sha256 "7e39d64091e4979132ec14736170f84034e93f8c2e83a879daa8f1827a4660b9"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.111"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.111", shell_output("#{bin}/dta --version")
  end
end
