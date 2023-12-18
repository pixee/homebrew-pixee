class PixeeJavaCodemods < Formula
    desc "Java codemods for Pixee"
    homepage "https://github.com/pixee/codemodder-java"
    url "https://github.com/pixee/codemodder-java/releases/download/0.69.1/codemodder-java-codemods-0.69.1.zip"
    sha256 "d97274a465de3dff284a4ff36c1aeffeeb5fad903a04434c8c43fc24a6252555"

    include Language::Python::Virtualenv

    depends_on "openjdk@17"
    depends_on "python@3.11"

    def install

      venv = virtualenv_create(libexec, Formula["python@3.11"].bin/"python3.11", without_pip: false)
      system libexec/"bin/pip", "install", "-v", "--ignore-installed", "semgrep==1.51.0"

      prefix.install Dir["*"]
      # Use write_env_script to generate a wrapper script
      (bin/"pixee-java-codemods").write_env_script "#{prefix}/bin/core-codemods", Language::Java.overridable_java_home_env("17"), PATH: "#{libexec}/bin:$PATH"
      
    end
  end
