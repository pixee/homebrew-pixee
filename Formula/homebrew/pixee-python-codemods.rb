class PixeePythonCodemods < Formula
    include Language::Python::Virtualenv
    desc "Python codemods for Pixee"
    homepage "https://github.com/pixee/codemodder-python"
    url "https://files.pythonhosted.org/packages/2e/fa/cec62f55c7e27490f78aabb9b9819015411dd51f360b2f847415ce858394/codemodder-0.81.0.tar.gz"
    sha256 "5b18e02709ed84d2a337a08abb5b246c68c6f56f9616648989b6a6267ccb5b7a"

    version "0.81.0"

    depends_on "python@3.11"

    def install
      venv = virtualenv_create(libexec, Formula["python@3.11"].bin/"python3.11", without_pip: false)
      system libexec/"bin/pip", "install", "-v", "--ignore-installed", buildpath
      #bin.install_symlink libexec/"bin/codemodder" => "pixee-python-codemods"
      (bin/"pixee-python-codemods").write_env_script "#{prefix}/libexec/bin/codemodder", PATH: "#{libexec}/bin:$PATH"
    end
end
