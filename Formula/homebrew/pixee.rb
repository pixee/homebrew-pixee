class Pixee < Formula
  include Language::Python::Virtualenv

  #cli_tag = "0.5.0"

  desc "Fix and prevent bugs and security vulnerabilities in your code"
  homepage "https://pixee.ai"
 
  url "https://worker-brew.pixee.workers.dev/b8/1a/087990805162b5d347edf22f7c8a2b47c3e38f2db305068e6ae6161141bc/pixee-0.5.0.tar.gz"
  url "https://worker-brew.pixee.workers.dev/79/e1/e7838e233f6b1ecd6447e8f34062cf96d063395e0d88e4c3f85dba28abc1/pixee-0.5.2.tar.gz
  sha256 "ea0583b04a719b09b68aedb18314a1d6e2ddd929292091b566b2bad1d4290718"

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
