class Serena < Formula
  include Language::Python::Virtualenv

  desc "Coding agent toolkit with LSP and MCP support"
  homepage "https://github.com/oraios/serena"
  url "https://files.pythonhosted.org/packages/56/31/b5e1d0d55ce5669b60df3a20af45dc81ed0aa173eb735f35fe6712e9be74/serena_agent-0.1.4.tar.gz"
  sha256 "8bb79a964a4bd09d5e5b86115d5436d9229dc80e6a3e0f176415e34294531a84"
  license "MIT"
  version "0.1.4"

  depends_on "python@3.11"

  resource "annotated_types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "anthropic" do
    url "https://files.pythonhosted.org/packages/04/ea/0869d6df9ef83dcf393aeefc12dd81677d091c6ffc86f783e51cf44062f2/anthropic-0.84.0.tar.gz"
    sha256 "72f5f90e5aebe62dca316cb013629cfa24996b0f5a4593b8c3d712bc03c43c37"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/96/f0/5eb65b2bb0d09ac6776f2eb54adee6abe8228ea05b20a5ad0e4945de8aac/anyio-4.12.1.tar.gz"
    sha256 "41cfcc3a4c85d3f05c932da7c26d0201ac36f72abd4435ba90d0464a3ffed703"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/6b/5c/685e6633917e101e5dcb62b9dd76946cbb57c26e133bae9e0cd36033c0a9/attrs-25.4.0.tar.gz"
    sha256 "16d5969b87f0859ef33a48b35d55ac1be6e42ae49d5e853b597db70c35c57e11"
  end

  resource "blinker" do
    url "https://files.pythonhosted.org/packages/21/28/9b3f50ce0e048515135495f198351908d99540d69bfdc8c1d15b73dc55ce/blinker-1.9.0.tar.gz"
    sha256 "b4ce2265a7abece45e7cc896e98dbebe6cead56bcf805a3d23136d145f5445bf"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/af/2d/7bf41579a8986e348fa033a31cdd0e4121114f6bce2457e8876010b092dd/certifi-2026.2.25.tar.gz"
    sha256 "e887ab5cee78ea814d3472169153c2d12cd43b14bd03329a39a9c6e2e80bfba7"
  end

  resource "charset_normalizer" do
    url "https://files.pythonhosted.org/packages/1d/35/02daf95b9cd686320bb622eb148792655c9412dbb9b67abb5694e5910a24/charset_normalizer-3.4.5.tar.gz"
    sha256 "95adae7b6c42a6c5b5b559b1a99149f090a57128155daeea91732c8d970d8644"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/fc/f8/98eea607f65de6527f8a2e8885fc8015d3e6f5775df186e443e0964a11c3/distro-1.9.0.tar.gz"
    sha256 "2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed"
  end

  resource "docstring_parser" do
    url "https://files.pythonhosted.org/packages/b2/9d/c3b43da9515bd270df0f80548d9944e389870713cc1fe2b8fb35fe2bcefd/docstring_parser-0.17.0.tar.gz"
    sha256 "583de4a309722b3315439bb31d64ba3eebada841f2e2cee23b99df001434c912"
  end

  resource "dotenv" do
    url "https://files.pythonhosted.org/packages/b2/b7/545d2c10c1fc15e48653c91efde329a790f2eecfbbf2bd16003b5db2bab0/dotenv-0.9.9-py2.py3-none-any.whl"
    sha256 "29cf74a087b31dafdb5a446b6d7e11cbce8ed2741540e2339c69fbef92c94ce9"
  end

  resource "flask" do
    url "https://files.pythonhosted.org/packages/26/00/35d85dcce6c57fdc871f3867d465d780f302a175ea360f62533f12b27e2b/flask-3.1.3.tar.gz"
    sha256 "0ef0e52b8a9cd932855379197dd8f94047b359ca0a78695144304cb45f87c9eb"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "httpx_sse" do
    url "https://files.pythonhosted.org/packages/0f/4c/751061ffa58615a32c31b2d82e8482be8dd4a89154f003147acee90f2be9/httpx_sse-0.4.3.tar.gz"
    sha256 "9b1ed0127459a66014aec3c56bebd93da3c1bc8bb6618c8082039a44889a755d"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "itsdangerous" do
    url "https://files.pythonhosted.org/packages/9c/cb/8ac0172223afbccb63986cc25049b154ecfb5e85932587206f42317be31d/itsdangerous-2.2.0.tar.gz"
    sha256 "e0050c0b7da1eea53ffaf149c0cfbb5c6e2e2b69c4bef22c81fa6eb73e5f6173"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  on_arm do
    resource "jiter" do
      url "https://files.pythonhosted.org/packages/50/f6/566364c777d2ab450b92100bea11333c64c38d32caf8dc378b48e5b20c46/jiter-0.13.0-cp311-cp311-macosx_11_0_arm64.whl"
      sha256 "66aa3e663840152d18cc8ff1e4faad3dd181373491b9cfdc6004b92198d67911"
    end
  end
  on_intel do
    resource "jiter" do
      url "https://files.pythonhosted.org/packages/71/29/499f8c9eaa8a16751b1c0e45e6f5f1761d180da873d417996cc7bddc8eef/jiter-0.13.0-cp311-cp311-macosx_10_12_x86_64.whl"
      sha256 "ea026e70a9a28ebbdddcbcf0f1323128a8db66898a06eaad3a4e62d2f554d096"
    end
  end

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/41/f2/d34e8b3a08a9cc79a50b2208a93dce981fe615b64d5a4d4abee421d898df/joblib-1.5.3.tar.gz"
    sha256 "8561a3269e6801106863fd0d6d84bb737be9e7631e33aaed3fb9ce5953688da3"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/b3/fc/e067678238fa451312d4c62bf6e6cf5ec56375422aee02f9cb5f909b3047/jsonschema-4.26.0.tar.gz"
    sha256 "0c26707e2efad8aa1bfc5b7ce170f3fccc2e4918ff85989ba9ffa9facb2be326"
  end

  resource "jsonschema_specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "mcp" do
    url "https://files.pythonhosted.org/packages/4d/19/9955e2df5384ff5dd25d38f8e88aaf89d2d3d9d39f27e7383eaf0b293836/mcp-1.12.3.tar.gz"
    sha256 "ab2e05f5e5c13e1dc90a4a9ef23ac500a6121362a564447855ef0ab643a99fed"
  end

  resource "nodeenv" do
    url "https://files.pythonhosted.org/packages/24/bf/d1bda4f6168e0b2e9e5958945e01910052158313224ada5ce1fb2e1113b8/nodeenv-1.10.0.tar.gz"
    sha256 "996c191ad80897d076bdfba80a41994c2b47c68e224c542b48feba42ba00f8bb"
  end

  resource "overrides" do
    url "https://files.pythonhosted.org/packages/36/86/b585f53236dec60aba864e050778b25045f857e17f6e5ea0ae95fe80edd2/overrides-7.7.0.tar.gz"
    sha256 "55158fa3d93b98cc75299b1e67078ad9003ca27945c76162c1c0766d6f91820a"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/fa/36/e27608899f9b8d4dff0617b2d9ab17ca5608956ca44461ac14ac48b44015/pathspec-1.0.4.tar.gz"
    sha256 "0210e2ae8a21a9137c0d470578cb0e595af87edaa6ebf12ff176f14a02e0e645"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/aa/c6/d1ddf4abb55e93cebc4f2ed8b5d6dbad109ecb8d63748dd2b20ab5e57ebe/psutil-7.2.2.tar.gz"
    sha256 "0746f5f8d406af344fd547f1c8daa5f5c33dbc293bb8d6a16d80b4bb88f59372"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/69/44/36f1a6e523abc58ae5f928898e4aca2e0ea509b5aa6f6f392a5d882be928/pydantic-2.12.5.tar.gz"
    sha256 "4d351024c75c0f085a9febbb665ce8c0c6ec5d30e903bdb6394b7ede26aebb49"
  end

  on_arm do
    resource "pydantic_core" do
      url "https://files.pythonhosted.org/packages/12/44/37e403fd9455708b3b942949e1d7febc02167662bf1a7da5b78ee1ea2842/pydantic_core-2.41.5-cp311-cp311-macosx_11_0_arm64.whl"
      sha256 "7f3bf998340c6d4b0c9a2f02d6a400e51f123b59565d74dc60d252ce888c260b"
    end
  end
  on_intel do
    resource "pydantic_core" do
      url "https://files.pythonhosted.org/packages/e8/72/74a989dd9f2084b3d9530b0915fdda64ac48831c30dbf7c72a41a5232db8/pydantic_core-2.41.5-cp311-cp311-macosx_10_12_x86_64.whl"
      sha256 "a3a52f6156e73e7ccb0f8cced536adccb7042be67cb45f9562e12b319c119da6"
    end
  end

  resource "pydantic_settings" do
    url "https://files.pythonhosted.org/packages/52/6d/fffca34caecc4a3f97bda81b2098da5e8ab7efc9a66e819074a11955d87e/pydantic_settings-2.13.1.tar.gz"
    sha256 "b4c11847b15237fb0171e1462bf540e294affb9b86db4d9aa5c01730bdbe4025"
  end

  resource "pyright" do
    url "https://files.pythonhosted.org/packages/74/b2/5db700e52554b8f025faa9c3c624c59f1f6c8841ba81ab97641b54322f16/pyright-1.1.408.tar.gz"
    sha256 "f28f2321f96852fa50b5829ea492f6adb0e6954568d1caa3f3af3a5f555eb684"
  end

  resource "python_dotenv" do
    url "https://files.pythonhosted.org/packages/82/ed/0301aeeac3e5353ef3d94b6ec08bbcabd04a72018415dcb29e588514bba8/python_dotenv-1.2.2.tar.gz"
    sha256 "2c371a91fbd7ba082c2c1dc1f8bf89ca22564a087c2c287cd9b662adde799cf3"
  end

  resource "python_multipart" do
    url "https://files.pythonhosted.org/packages/94/01/979e98d542a70714b0cb2b6728ed0b7c46792b695e3eaec3e20711271ca3/python_multipart-0.0.22.tar.gz"
    sha256 "7340bef99a7e0032613f56dc36027b959fd3b30a787ed62d310e951f7c3a3a58"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  on_arm do
    resource "regex" do
      url "https://files.pythonhosted.org/packages/62/b9/6796b3bf3101e64117201aaa3a5a030ec677ecf34b3cd6141b5d5c6c67d5/regex-2026.2.28-cp311-cp311-macosx_11_0_arm64.whl"
      sha256 "bcb399ed84eabf4282587ba151f2732ad8168e66f1d3f85b1d038868fe547703"
    end
  end
  on_intel do
    resource "regex" do
      url "https://files.pythonhosted.org/packages/5d/10/ccc22c52802223f2368731964ddd117799e1390ffc39dbb31634a83022ee/regex-2026.2.28-cp311-cp311-macosx_10_9_x86_64.whl"
      sha256 "0d5bef2031cbf38757a0b0bc4298bb4824b6332d28edc16b39247228fbdbad97"
    end
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  on_arm do
    resource "rpds_py" do
      url "https://files.pythonhosted.org/packages/94/ba/24e5ebb7c1c82e74c4e4f33b2112a5573ddc703915b13a073737b59b86e0/rpds_py-0.30.0-cp311-cp311-macosx_11_0_arm64.whl"
      sha256 "dc4f992dfe1e2bc3ebc7444f6c7051b4bc13cd8e33e43511e8ffd13bf407010d"
    end
  end
  on_intel do
    resource "rpds_py" do
      url "https://files.pythonhosted.org/packages/4d/6e/f964e88b3d2abee2a82c1ac8366da848fce1c6d834dc2132c3fda3970290/rpds_py-0.30.0-cp311-cp311-macosx_10_12_x86_64.whl"
      sha256 "a2bffea6a4ca9f01b3f8e548302470306689684e61602aa3d141e34da06cf425"
    end
  end

  resource "ruamel_yaml" do
    url "https://files.pythonhosted.org/packages/c7/3b/ebda527b56beb90cb7652cb1c7e4f91f48649fbcd8d2eb2fb6e77cd3329b/ruamel_yaml-0.19.1.tar.gz"
    sha256 "53eb66cd27849eff968ebf8f0bf61f46cdac2da1d1f3576dd4ccee9b25c31993"
  end

  resource "sensai_utils" do
    url "https://files.pythonhosted.org/packages/75/5a/b0a1db8703754ec933b0b8288541ee585c13f7bd0684d8623da4271b374b/sensai_utils-1.6.0.tar.gz"
    sha256 "e50ae6bbd7c62a961f25b98e55b29029450efd66444678931b3b9c43e9bf9e95"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "sse_starlette" do
    url "https://files.pythonhosted.org/packages/5a/9f/c3695c2d2d4ef70072c3a06992850498b01c6bc9be531950813716b426fa/sse_starlette-3.3.2.tar.gz"
    sha256 "678fca55a1945c734d8472a6cad186a55ab02840b4f6786f5ee8770970579dcd"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/c4/68/79977123bb7be889ad680d79a40f339082c1978b5cfcf62c2d8d196873ac/starlette-0.52.1.tar.gz"
    sha256 "834edd1b0a23167694292e94f597773bc3f89f362be6effee198165a35d62933"
  end

  on_arm do
    resource "tiktoken" do
      url "https://files.pythonhosted.org/packages/c9/d9/35c5d2d9e22bb2a5f74ba48266fb56c63d76ae6f66e02feb628671c0283e/tiktoken-0.12.0-cp311-cp311-macosx_11_0_arm64.whl"
      sha256 "c06cf0fcc24c2cb2adb5e185c7082a82cba29c17575e828518c2f11a01f445aa"
    end
  end
  on_intel do
    resource "tiktoken" do
      url "https://files.pythonhosted.org/packages/de/46/21ea696b21f1d6d1efec8639c204bdf20fde8bafb351e1355c72c5d7de52/tiktoken-0.12.0-cp311-cp311-macosx_10_12_x86_64.whl"
      sha256 "6e227c7f96925003487c33b1b32265fad2fbcec2b7cf4817afb76d416f40f6bb"
    end
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/09/a9/6ba95a270c6f1fbcd8dac228323f2777d886cb206987444e4bce66338dd4/tqdm-4.67.3.tar.gz"
    sha256 "7d825f03f89244ef73f1d4ce193cb1774a8179fd96f31d7e1dcde62092b960bb"
  end

  resource "types_pyyaml" do
    url "https://files.pythonhosted.org/packages/7e/69/3c51b36d04da19b92f9e815be12753125bd8bc247ba0470a982e6979e71c/types_pyyaml-6.0.12.20250915.tar.gz"
    sha256 "0f8b54a528c303f0e6f7165687dd33fafa81c807fcac23f632b63aa624ced1d3"
  end

  resource "typing_extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "typing_inspection" do
    url "https://files.pythonhosted.org/packages/55/e3/70399cb7dd41c10ac53367ae42139cf4b1ca5f36bb3dc6c9d33acdb43655/typing_inspection-0.4.2.tar.gz"
    sha256 "ba561c48a67c5958007083d386c3295464928b01faa735ab8547c5692e87f464"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/32/ce/eeb58ae4ac36fe09e3842eb02e0eb676bf2c53ae062b98f1b2531673efdd/uvicorn-0.41.0.tar.gz"
    sha256 "09d11cf7008da33113824ee5a1c6422d89fbc2ff476540d69a34c87fab8b571a"
  end

  resource "werkzeug" do
    url "https://files.pythonhosted.org/packages/61/f1/ee81806690a87dab5f5653c1f146c92bc066d7f4cebc603ef88eb9e13957/werkzeug-3.1.6.tar.gz"
    sha256 "210c6bede5a420a913956b4791a7f4d6843a43b6fcee4dfa08a65e93007d0d25"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/serena --help 2>&1", 0)
    assert_match "serena", output.downcase
  end
end
