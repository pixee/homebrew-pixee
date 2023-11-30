class Pixee < Formula
  include Language::Python::Virtualenv

  desc "Fix and prevent bugs and security vulnerabilities in your code"
  homepage "https://pixee.ai"
  url "https://github.com/pixee/pixee-cli.git",
    branch: "main"
  head "https://github.com/pixee/pixee-cli.git", branch: "main"
  license "MIT"
  version "0.1.0"

  depends_on "python@3.11"
  depends_on "openjdk@17"
  depends_on "rust" => :build

  depends_on "python-click"
  depends_on "python-prompt-toolkit"
  depends_on "python-rich"

  resource "codemodder" do
    url "https://files.pythonhosted.org/packages/18/ae/ce5f2d1d6f632f728e173be52212fe29d601a3a3146c35cb725217d7190f/codemodder-0.64.5.tar.gz"
    sha256 "752f0fc447b26bd1b913ed6df508bc8b7b21ec1159086c0107eecc48e9b1c55e"
  end

  resource "astroid" do
    url "https://files.pythonhosted.org/packages/69/53/07229db171855e410bf40a996f1d49cc35222e18a1c95cd566e69bb9e0e5/astroid-3.0.1.tar.gz"
    sha256 "86b0bb7d7da0be1a7c4aedb7974e391b32d4ed89e33de6ed6902b4b15c97577e"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/97/90/81f95d5f705be17872843536b1868f351805acf6971251ff07c1b8334dbb/attrs-23.1.0.tar.gz"
    sha256 "6279836d581513a26f1bf235f9acd333bc9115683f14f7e8fae46c98fc50e015"
  end

  resource "boltons" do
    url "https://files.pythonhosted.org/packages/ad/1f/6c0608d86e0fc77c982a2923ece80eef85f091f2332fc13cbce41d70d502/boltons-21.0.0.tar.gz"
    sha256 "65e70a79a731a7fe6e98592ecfb5ccf2115873d01dbc576079874629e5c90f13"
  end

  resource "bracex" do
    url "https://files.pythonhosted.org/packages/90/8b/34d174ce519f859af104c722fa30213103d34896a07a4f27bde6ac780633/bracex-2.4.tar.gz"
    sha256 "a27eaf1df42cf561fed58b7a8f3fdf129d1ea16a81e1fadd1d17989bc6384beb"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/d4/91/c89518dd4fe1f3a4e3f6ab7ff23cb00ef2e8c9adf99dacc618ad5e068e28/certifi-2023.11.17.tar.gz"
    sha256 "9b469f3a900bf28dc19b8cfbf8019bf47f7fdd1a65a1d4ffb98fc14166beb4d1"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
    sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "click-option-group" do
    url "https://files.pythonhosted.org/packages/e7/b8/91054601a2e05fd9060cb1baf56be5b24145817b059e078669e1099529c7/click-option-group-0.5.6.tar.gz"
    sha256 "97d06703873518cc5038509443742b25069a3c7562d1ea72ff08bfadde1ce777"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "defusedxml" do
    url "https://files.pythonhosted.org/packages/0f/d5/c66da9b79e5bdb124974bfe172b4daf3c984ebd9c2a06e2b8a4dc7331c72/defusedxml-0.7.1.tar.gz"
    sha256 "1bb3032db185915b62d7c6209c5a8792be6a32ab2fedacc84e01b52c51aa3e69"
  end

  resource "dill" do
    url "https://files.pythonhosted.org/packages/c4/31/54dd222e02311c2dbc9e680d37cbd50f4494ce1ee9b04c69980e4ec26f38/dill-0.3.7.tar.gz"
    sha256 "cc1c8b182eb3013e24bd475ff2e9295af86c1a38eb1aff128dac8962a9ce3c03"
  end

  resource "face" do
    url "https://files.pythonhosted.org/packages/d7/bc/4d0f6c1e095eb977782edd94245f84b69c6f8df152480c78ab310e895098/face-22.0.0.tar.gz"
    sha256 "d5d692f90bc8f5987b636e47e36384b9bbda499aaf0a77aa0b0bbe834c76923d"
  end

  resource "glom" do
    url "https://files.pythonhosted.org/packages/3f/d1/69432deefa6f5283ec75b246d0540097ae26f618b915519ee3824c4c5dd6/glom-22.1.0.tar.gz"
    sha256 "1510c6587a8f9c64a246641b70033cbc5ebde99f02ad245693678038e821aeb5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/bf/3f/ea4b9117521a1e9c50344b909be7886dd00a519552724809bb1f486986c2/idna-3.6.tar.gz"
    sha256 "9ecdbbd083b06798ae1e86adcbfe8ab1479cf864e4ee30fe4e46a003d12491ca"
  end

  resource "isort" do
    url "https://files.pythonhosted.org/packages/a9/c4/dc00e42c158fc4dda2afebe57d2e948805c06d5169007f1724f0683010a9/isort-5.12.0.tar.gz"
    sha256 "8bef7dde241278824a6d83f44a544709b065191b95b6e50894bdc722fcba0504"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/a8/74/77bf12d3dd32b764692a71d4200f03429c41eee2e8a9225d344d91c03aff/jsonschema-4.20.0.tar.gz"
    sha256 "4f614fd46d8d61258610998997743ec5492a648b33cf478c1ddc23ed4598a5fa"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/d4/84/8f5072792a260016048d3a5ae5186ec3be9e090480ddf5446484394dd8c3/jsonschema_specifications-2023.11.1.tar.gz"
    sha256 "c9b234904ffe02f079bf91b14d79987faa685fd4b39c377a0996954c0090b9ca"
  end

  resource "libcst" do
    url "https://files.pythonhosted.org/packages/81/ef/610498b5e982d9dd64f2af8422ece1be44a946a8dbda15d08087e0e1ff08/libcst-1.1.0.tar.gz"
    sha256 "0acbacb9a170455701845b7e940e2d7b9519db35a86768d86330a0b0deae1086"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "mccabe" do
    url "https://files.pythonhosted.org/packages/e7/ff/0ffefdcac38932a54d2b5eed4e0ba8a408f215002cd178ad1df0f2806ff8/mccabe-0.7.0.tar.gz"
    sha256 "348e0240c33b60bbdf4e523192ef919f28cb2c3d7d5c7794f74009290f236325"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "mypy-extensions" do
    url "https://files.pythonhosted.org/packages/98/a4/1ab47638b92648243faf97a5aeb6ea83059cc3624972ab6b8d2316078d3f/mypy_extensions-1.0.0.tar.gz"
    sha256 "75dbf8955dc00442a438fc4d0666508a9a97b6bd41aa2f0ffe9d2f2725af0782"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/fb/2b/9b9c33ffed44ee921d0967086d653047286054117d584f1b1a7c22ceaf7b/packaging-23.2.tar.gz"
    sha256 "048fb0e9405036518eaaf48a55953c750c11e1a1b68e0dd1a9d62ed0c092cfc5"
  end

  resource "peewee" do
    url "https://files.pythonhosted.org/packages/6a/30/a727bb1420076b3c14b60911d111f0fc0449d31a1123a1ad18878a7a4e40/peewee-3.17.0.tar.gz"
    sha256 "3a56967f28a43ca7a4287f4803752aeeb1a57a08dee2e839b99868181dfb5df8"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/31/28/e40d24d2e2eb23135f8533ad33d582359c7825623b1e022f9d460def7c05/platformdirs-4.0.0.tar.gz"
    sha256 "cb633b2bcf10c51af60beb0ab06d2f1d69064b43abf4c185ca6b28865f3f9731"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/55/59/8bccf4157baf25e4aa5a0bb7fa3ba8600907de105ebc22b0c78cfbf6f565/pygments-2.17.2.tar.gz"
    sha256 "da46cec9fd2de5be3a8a784f434e4c4ab670b4ff54d605c4c2717e9d49c4c367"
  end

  resource "pylint" do
    url "https://files.pythonhosted.org/packages/10/ab/f0ad2a4fb3265d71685627db452398f769b48d64d81c7d66ca8c4f4c198b/pylint-3.0.2.tar.gz"
    sha256 "0d4c286ef6d2f66c8bfb527a7f8a629009e42c99707dec821a03e1b51a4c1496"
  end

  resource "python-json-logger" do
    url "https://files.pythonhosted.org/packages/4f/da/95963cebfc578dabd323d7263958dfb68898617912bb09327dd30e9c8d13/python-json-logger-2.0.7.tar.gz"
    sha256 "23e7ec02d34237c5aa1e29a070193a4ea87583bb4e7f8fd06d3de8264c4b2e1c"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/61/11/5e947c3f2a73e7fb77fd1c3370aa04e107f3c10ceef4880c2e25ef19679c/referencing-0.31.0.tar.gz"
    sha256 "cc28f2c88fbe7b961a7817a0abc034c09a1e36358f82fedb4ffdf29a25398863"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/a7/ec/4a7d80728bd429f7c0d4d51245287158a1516315cadbb146012439403a9d/rich-13.7.0.tar.gz"
    sha256 "5cb5123b5cf9ee70584244246816e9114227e0b98ad9176eede6ad54bf5403fa"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/94/3f/b58db0c212ba3a89378d1684f871e0e7783fc34fadc7696e5439c8c9338e/rpds_py-0.13.1.tar.gz"
    sha256 "264f3a5906c62b9df3a00ad35f6da1987d321a053895bd85f9d5c708de5c0fbf"
  end

  resource "ruamel-yaml" do
    url "https://files.pythonhosted.org/packages/d1/d6/eb2833ccba5ea36f8f4de4bcfa0d1a91eb618f832d430b70e3086821f251/ruamel.yaml-0.17.40.tar.gz"
    sha256 "6024b986f06765d482b5b07e086cc4b4cd05dd22ddcbc758fa23d54873cf313d"
  end

  resource "ruamel-yaml-clib" do
    url "https://files.pythonhosted.org/packages/46/ab/bab9eb1566cd16f060b54055dd39cf6a34bfa0240c53a7218c43e974295b/ruamel.yaml.clib-0.2.8.tar.gz"
    sha256 "beb2e0404003de9a4cab9753a8805a8fe9320ee6673136ed7f04255fe60bb512"
  end

  resource "semgrep" do
    url "https://files.pythonhosted.org/packages/4a/9e/1fccf7092e34beba7790571a5088111288a17fddbf4442b2d84df63b4c33/semgrep-1.50.0.tar.gz"
    sha256 "c25f401acd686a62c5b437b1804f4e561cd03e22e1111ec126fb2e08ec872bce"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "tomli" do
    url "https://files.pythonhosted.org/packages/c0/3f/d7af728f075fb08564c5949a9c95e44352e23dee646869fa104a3b2060a3/tomli-2.0.1.tar.gz"
    sha256 "de526c12914f0c550d15924c62d72abc48d6fe7364aa87328337a31007fe8a4f"
  end

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/df/fc/1201a374b9484f034da4ec84215b7b9f80ed1d1ea989d4c02167afaa4400/tomlkit-0.12.3.tar.gz"
    sha256 "75baf5012d06501f07bee5bf8e801b9f343e7aac5a92581f20f80ce632e6b5a4"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/1f/7a/8b94bb016069caa12fc9f587b28080ac33b4fbb8ca369b98bc0a4828543e/typing_extensions-4.8.0.tar.gz"
    sha256 "df8e4339e9cb77357558cbdbceca33c303714cf861d1eef15e1070055ae8b7ef"
  end

  resource "typing-inspect" do
    url "https://files.pythonhosted.org/packages/dc/74/1789779d91f1961fa9438e9a8710cdae6bd138c80d7303996933d117264a/typing_inspect-0.9.0.tar.gz"
    sha256 "b23fc42ff6f6ef6954e4852c1fb512cdd18dbea03134f91f856a95ccc9461f78"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/0c/39/64487bf07df2ed854cc06078c27c0d0abc59bd27b32232876e403c333a08/urllib3-1.26.18.tar.gz"
    sha256 "f8ecc1bba5667413457c529ab955bf8c67b45db799d159066261719e328580a0"
  end

  resource "wcmatch" do
    url "https://files.pythonhosted.org/packages/92/51/72ce10501dbfe508808fd6a637d0a35d1b723a5e8c470f3d6e9458a4f415/wcmatch-8.5.tar.gz"
    sha256 "86c17572d0f75cbf3bcb1a18f3bf2f9e72b39a9c08c9b4a74e991e1882a8efb3"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/95/4c/063a912e20bcef7124e0df97282a8af3ff3e4b603ce84c481d6d7346be0a/wrapt-1.16.0.tar.gz"
    sha256 "5f370f952971e7d17c7d1ead40e49f32345a7f7a5373571ef44d800d06b1899d"
  end

  def install
    venv = virtualenv_create(libexec, Formula["python@3.11"].bin/"python3.11")
    venv.pip_install resources.reject { |r| r.name == "semgrep" }
    venv.pip_install_and_link buildpath

    bin.install_symlink libexec/"bin/codemodder" => "pixee-python-codemodder"
  end

end
