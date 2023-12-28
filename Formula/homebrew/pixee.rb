class Pixee < Formula
  include Language::Python::Virtualenv

  #cli_tag = "0.5.0"

  desc "Fix and prevent bugs and security vulnerabilities in your code"
  homepage "https://pixee.ai"

  url "https://worker-brew.pixee.workers.dev/ad/6c/3c4ada32a280b207b65672324cb516b1a97f85952f7f9d69a62c1704e5ba/pixee-0.5.5.tar.gz"
  sha256 "a922aa4a60189cd2c523d4581275f21a6adf7221acf72d833fe8896d4e4bd673"

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
