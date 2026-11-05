class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.105/dta-cli-0.10.0-SNAPSHOT.105.tar.gz"
  sha256 "13778e0195db037f884e0fff33feb8931627777b61914bdbe3ead577ce00f38b"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.105"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.105", shell_output("#{bin}/dta --version")
  end
end
