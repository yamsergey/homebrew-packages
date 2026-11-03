class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.93/dta-cli-0.10.0-SNAPSHOT.93.tar.gz"
  sha256 "906998cfe4f47ba2018881c7f91f5240fb6bc55ed0a0aac481dae5216799b4bf"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.93"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.93", shell_output("#{bin}/dta --version")
  end
end
