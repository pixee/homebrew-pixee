class PixeeJavaCodemods < Formula
    desc "Java codemods for Pixee"
    homepage "https://github.com/pixee/codemodder-java"
    url "https://github.com/pixee/codemodder-java/releases/download/v0.69.2/codemodder-java-codemods-0.69.2.zip"
    sha256 "da85092485884502ce7f037bfc37b5e76b1326bf8d95f2145405ae48f05c1bc2"

    include Language::Python::Virtualenv

    depends_on "openjdk@17"
    depends_on "python@3.11"

    def install

      venv = virtualenv_create(libexec, Formula["python@3.11"].bin/"python3.11", without_pip: false)
      system libexec/"bin/pip", "install", "-v", "--ignore-installed", "semgrep==1.51.0"

      prefix.install Dir["*"]
      
      # Use write_env_script to generate a wrapper script
      java_home = "#{Formula["openjdk@17"].opt_prefix}/libexec/openjdk.jdk/Contents/Home"
      (bin/"pixee-java-codemods").write_env_script "#{prefix}/bin/core-codemods",
        PATH: "#{libexec}/bin:$PATH",
        JAVA_HOME: java_home
  
    end
  end
