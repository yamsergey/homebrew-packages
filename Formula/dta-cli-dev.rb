class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.92/dta-cli-0.10.0-SNAPSHOT.92.tar.gz"
  sha256 "4b5cc02dc24cd98afea4293a6975ac73a0727ef09ebe13a8f664c6c6cceecd9b"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.92"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.92", shell_output("#{bin}/dta --version")
  end
end
