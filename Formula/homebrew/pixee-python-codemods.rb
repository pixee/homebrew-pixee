class PixeePythonCodemods < Formula
    include Language::Python::Virtualenv
    desc "Python codemods for Pixee"
    homepage "https://github.com/pixee/codemodder-python"
    url "https://files.pythonhosted.org/packages/81/51/7abca0081892c9c26ebc8a9ff0391a24fcc3f690b906c9a753e890f2cafa/codemodder-0.88.0.tar.gz"
    sha256 "fcff7df3784dc1f598ec9ee8361cf16e1c482ece0735aa620c6a9588f1ddb05d"

    version "0.88.0"

    depends_on "python@3.11"

    def install
      venv = virtualenv_create(libexec, Formula["python@3.11"].bin/"python3.11", without_pip: false)
      system libexec/"bin/pip", "install", "-v", "--ignore-installed", buildpath
      #bin.install_symlink libexec/"bin/codemodder" => "pixee-python-codemods"
      (bin/"pixee-python-codemods").write_env_script "#{prefix}/libexec/bin/codemodder", PATH: "#{libexec}/bin:$PATH"
    end
end
