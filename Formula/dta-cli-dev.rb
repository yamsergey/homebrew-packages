class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.109/dta-cli-0.10.0-SNAPSHOT.109.tar.gz"
  sha256 "f0204f0a7ea0de36f1ccc9249299c7fc9bf451f09f63d34726b0c50f294168d5"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.109"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.109", shell_output("#{bin}/dta --version")
  end
end
