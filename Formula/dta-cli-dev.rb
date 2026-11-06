class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.114/dta-cli-0.10.0-SNAPSHOT.114.tar.gz"
  sha256 "f563d640a0a481bf3f943ecbd16bfac6817b6f3ea5790bb1378cb7addc1e4ce1"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.114"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.114", shell_output("#{bin}/dta --version")
  end
end
