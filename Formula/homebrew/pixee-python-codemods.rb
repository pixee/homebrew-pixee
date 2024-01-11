class PixeePythonCodemods < Formula
    include Language::Python::Virtualenv
    desc "Python codemods for Pixee"
    homepage "https://github.com/pixee/codemodder-python"
    url "https://files.pythonhosted.org/packages/6a/f7/cd6a38b98b9814a3ea9213036d69b9109e5007367cb049b6956ccb36b9e6/codemodder-0.69.0.tar.gz"
    sha256 "e092feddb65be523b8955d41a5adbeb584645dcddcdc07dc29b78fb8a8227f8f"

    version "0.69.0"

    depends_on "python@3.11"

    def install
      venv = virtualenv_create(libexec, Formula["python@3.11"].bin/"python3.11", without_pip: false)
      system libexec/"bin/pip", "install", "-v", "--ignore-installed", buildpath
      #bin.install_symlink libexec/"bin/codemodder" => "pixee-python-codemods"
      (bin/"pixee-python-codemods").write_env_script "#{prefix}/libexec/bin/codemodder", PATH: "#{libexec}/bin:$PATH"
    end
end
