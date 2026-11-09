class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.116/dta-cli-0.10.0-SNAPSHOT.116.tar.gz"
  sha256 "016f7dd94a4d58c316edf9637b353c18ca94b03e2d19eb025afcd22dd1e77554"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.116"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.116", shell_output("#{bin}/dta --version")
  end
end
