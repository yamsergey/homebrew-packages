class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.121/dta-cli-0.10.0-SNAPSHOT.121.tar.gz"
  sha256 "d87b3a8aedb27f5a25b504b6bd7fe2a5713ee7c00f3dec825c4e41c8a86133c9"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.121"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.121", shell_output("#{bin}/dta --version")
  end
end
