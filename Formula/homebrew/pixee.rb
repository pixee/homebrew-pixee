class Pixee < Formula
  include Language::Python::Virtualenv

  #cli_tag = "0.5.0"

  desc "Fix and prevent bugs and security vulnerabilities in your code"
  homepage "https://pixee.ai"
 
  url "https://worker-brew.pixee.workers.dev/b8/1a/087990805162b5d347edf22f7c8a2b47c3e38f2db305068e6ae6161141bc/pixee-0.5.0.tar.gz"
  sha256 "2aa82ecd7e0c421d7224ff2cfb3543bb8f4cdc64f335a1cd59eb8de553b60b5f"

  #url "https://github.com/pixee/pixee-cli.git", tag: cli_tag
  #head "https://github.com/pixee/pixee-cli.git", tag: cli_tag
  license "MIT"

  depends_on "python@3.11"
  depends_on "pixee-python-codemods"
  depends_on "pixee-java-codemods"

  def install
    venv = virtualenv_create(libexec, Formula["python@3.11"].bin/"python3.11", without_pip: false)
    system libexec/"bin/pip", "install", "-v", "--ignore-installed", buildpath
    bin.install_symlink libexec/"bin/pixee" => "pixee"
  end
end
