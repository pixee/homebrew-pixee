class PixeeJavaCodemods < Formula
    desc "Java codemods for Pixee"
    homepage "https://github.com/pixee/codemodder-java"
    url "https://github.com/pixee/codemodder-java/releases/download/v0.71.0/codemodder-java-codemods-0.71.0.zip"
    sha256 "36ee87bd29a911ce20b0eaf981fd3736905ccefb75695db5919a66fdce9340d3"

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
