class Pixee < Formula
  include Language::Python::Virtualenv

  desc "Fix and prevent bugs and security vulnerabilities in your code"
  homepage "https://pixee.ai"
  url "https://github.com/pixee/pixee-cli.git",
    tag: "0.2.1"
  head "https://github.com/pixee/pixee-cli.git", tag: "0.2.1"
  license "MIT"

  depends_on "python@3.11"
  depends_on "pixee-python-codemods"
  depends_on "pixee-java-codemods"

  def install
    venv = virtualenv_create(libexec, Formula["python@3.11"].bin/"python3.11", without_pip: false)
    system libexec/"bin/pip", "install", "-v", buildpath
    #skipped = %w[semgrep codemodder-java-codemods]
    #venv.pip_install resources.reject { |r| skipped.include? r.name }
    #venv.pip_install_and_link buildpath
    bin.install_symlink libexec/"bin/pixee" => "pixee"
  end
end
