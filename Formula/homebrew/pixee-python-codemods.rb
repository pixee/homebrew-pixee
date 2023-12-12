class PixeePythonCodemods < Formula
    include Language::Python::Virtualenv
    desc "Python codemods for Pixee"
    homepage "https://github.com/pixee/codemodder-python"
    url "https://files.pythonhosted.org/packages/18/ae/ce5f2d1d6f632f728e173be52212fe29d601a3a3146c35cb725217d7190f/codemodder-0.64.5.tar.gz"
    sha256 "752f0fc447b26bd1b913ed6df508bc8b7b21ec1159086c0107eecc48e9b1c55e"

    depends_on "python@3.11"

    def install
      #venv = virtualenv_create(libexec, Formula["python@3.11"].bin/"python3.11")
      venv = virtualenv_create(libexec, Formula["python@3.11"].bin/"python3.11", without_pip: false)
      system libexec/"bin/pip", "install", "-v", buildpath

      #skipped = %w[semgrep codemodder-java-codemods]
      #venv.pip_install resources.reject { |r| skipped.include? r.name }
      #venv.pip_install_and_link buildpath
  
      bin.install_symlink libexec/"bin/codemodder" => "pixee-python-codemods"
    end
  end