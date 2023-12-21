class Pixee < Formula
  include Language::Python::Virtualenv

  #cli_tag = "0.5.0"

  desc "Fix and prevent bugs and security vulnerabilities in your code"
  homepage "https://pixee.ai"
 
  url "https://worker-brew.pixee.workers.dev/e7/0c/a327345bb27196f15204fa9bfb1737f5dced69b48e80a32ba38ee3adae37/pixee-0.5.4.tar.gz"
  sha256 "b5eeeb0b88a50a8920f05321f420501b38a9acfdc1edcd4d2bf0618d3d1503db"

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
