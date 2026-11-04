class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.96/dta-cli-0.10.0-SNAPSHOT.96.tar.gz"
  sha256 "04b763c824754069e97ac08237310ec2951f7a74b8981832cf466db83aa31ea8"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.96"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.96", shell_output("#{bin}/dta --version")
  end
end
