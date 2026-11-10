class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.119/dta-cli-0.10.0-SNAPSHOT.119.tar.gz"
  sha256 "5b542e587dc93925ac7f2f135583fb6339f665dbf985fe4c56ff088e87ae9398"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.119"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.119", shell_output("#{bin}/dta --version")
  end
end
