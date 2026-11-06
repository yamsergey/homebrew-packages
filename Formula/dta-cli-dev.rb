class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.110/dta-cli-0.10.0-SNAPSHOT.110.tar.gz"
  sha256 "3393029001fb6d3d8e4f28df293c85f0d2302ee8ff838c35a7f17e855c846c1d"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.110"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.110", shell_output("#{bin}/dta --version")
  end
end
