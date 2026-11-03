class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.89/dta-cli-0.10.0-SNAPSHOT.89.tar.gz"
  sha256 "a2e701e3ed659cedbbd68ab7a4ad39d8ca54e7656b7e6ce682709e97da335e25"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.89"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.89", shell_output("#{bin}/dta --version")
  end
end
