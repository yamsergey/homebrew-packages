class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.135/dta-cli-0.10.0-SNAPSHOT.135.tar.gz"
  sha256 "267371871e8f30beb1da2bf5410ae748568d4e0c6fc42baa61c03d18e5dd2f1c"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.135"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.135", shell_output("#{bin}/dta --version")
  end
end
