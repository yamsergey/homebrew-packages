class DtaCliDev < Formula
  desc "DTA: inspect a running Android app's screen and network from the terminal or an agent (development channel)"
  homepage "https://github.com/yamsergey/dta"
  url "https://github.com/yamsergey/homebrew-packages/releases/download/dta-cli-dev-0.10.0-SNAPSHOT.106/dta-cli-0.10.0-SNAPSHOT.106.tar.gz"
  sha256 "baaf1cc3ee86deba1db62e1e21f00e3c98de79d8b8e7b312d7582bdb8b199490"
  license "Apache-2.0"
  version "0.10.0-SNAPSHOT.106"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"dta").write_env_script libexec/"bin/dta", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "dta 0.10.0-SNAPSHOT.106", shell_output("#{bin}/dta --version")
  end
end
