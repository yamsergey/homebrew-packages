class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.136/dta-cli-0.10.0-SNAPSHOT.136.tar.gz"
  sha256 "96c2caa89ec9eb61a78788331cebedc1ad9021300384b712956e5df3ebb59414"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.136"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.136", shell_output("#{bin}/dta --version")
  end
end
