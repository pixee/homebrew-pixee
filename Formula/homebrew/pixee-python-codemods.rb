class PixeePythonCodemods < Formula
    include Language::Python::Virtualenv
    desc "Python codemods for Pixee"
    homepage "https://github.com/pixee/codemodder-python"
    url "https://files.pythonhosted.org/packages/ab/0a/c3d18b58b1e84a39ecc79ae295bfa7ff0ebd1a8d956578fb7cdb90d31b37/codemodder-0.66.0.tar.gz"
    sha256 "029090dea9efcd7a044f579237e4483700e7c220330f22e7d729cb81be8c96b8"

    depends_on "python@3.11"

    def install
      venv = virtualenv_create(libexec, Formula["python@3.11"].bin/"python3.11", without_pip: false)
      system libexec/"bin/pip", "install", "-v", buildpath

      #skipped = %w[semgrep codemodder-java-codemods]
      #venv.pip_install resources.reject { |r| skipped.include? r.name }
      #venv.pip_install_and_link buildpath
      bin.install_symlink libexec/"bin/codemodder" => "pixee-python-codemods"
    end
end
