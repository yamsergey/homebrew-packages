class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.133/dta-cli-0.10.0-SNAPSHOT.133.tar.gz"
  sha256 "6b7fa17da8fab6e075a4d22189caaeffa6a2beae1b7e95cc337aa3198e562724"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.133"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.133", shell_output("#{bin}/dta --version")
  end
end
