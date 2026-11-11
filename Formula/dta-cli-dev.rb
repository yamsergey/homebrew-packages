class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.123/dta-cli-0.10.0-SNAPSHOT.123.tar.gz"
  sha256 "7dec506606e77e1d5f6f86251199ef9403d1b004b15f8f729a307d37387d93db"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.123"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.123", shell_output("#{bin}/dta --version")
  end
end
