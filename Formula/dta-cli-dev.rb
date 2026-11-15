class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.129/dta-cli-0.10.0-SNAPSHOT.129.tar.gz"
  sha256 "9f431febcbad7cc7ae17cfdcc862818e92d2b828b4c910875bd83c1d3c8b7602"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.129"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.129", shell_output("#{bin}/dta --version")
  end
end
