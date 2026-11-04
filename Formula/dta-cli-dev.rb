class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.102/dta-cli-0.10.0-SNAPSHOT.102.tar.gz"
  sha256 "a5b0536db64514b908b410ac52b8af78b4aa05eab872a30052ac742b53eba3d6"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.102"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.102", shell_output("#{bin}/dta --version")
  end
end
