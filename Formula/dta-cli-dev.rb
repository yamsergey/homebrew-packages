class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.95/dta-cli-0.10.0-SNAPSHOT.95.tar.gz"
  sha256 "4c75eef6d5eee10beb0b854dff431ff3fcb11289f2a38d18a8baf77695510aad"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.95"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.95", shell_output("#{bin}/dta --version")
  end
end
