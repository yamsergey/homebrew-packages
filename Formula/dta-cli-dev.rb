class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.99/dta-cli-0.10.0-SNAPSHOT.99.tar.gz"
  sha256 "f3d2774df0e66384c33e9db4c4362c03cdf2d3c4a9b35ea575eae1c9c0904c1f"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.99"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.99", shell_output("#{bin}/dta --version")
  end
end
