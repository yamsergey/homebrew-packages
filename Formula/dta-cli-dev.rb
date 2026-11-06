class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.113/dta-cli-0.10.0-SNAPSHOT.113.tar.gz"
  sha256 "068216d5dcbc530ebb6b1ac75953b86ea253769d63c5a76237a6f8ed4b0e57f2"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.113"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.113", shell_output("#{bin}/dta --version")
  end
end
