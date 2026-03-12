class Simplefocstudio < Formula
  desc "Graphical user interface for SimpleFOC BLDC/Stepper motor controllers"
  homepage "https://github.com/JorgeMaker/SimpleFOCStudio"
  url "https://github.com/JorgeMaker/SimpleFOCStudio/archive/refs/tags/v1.0.tar.gz"
  sha256 "c37225a822f31d6b626bea67d8bac70b49dcd8a5730c4e8a04cc063786aab915"
  version "1.0"
  license "MIT"

  depends_on "python@3.11"

  # Architecture-specific: PyQt5 core and Qt5 bundled libraries
  on_arm do
    resource "PyQt5" do
      url "https://files.pythonhosted.org/packages/11/64/42ec1b0bd72d87f87bde6ceb6869f444d91a2d601f2e67cd05febc0346a1/PyQt5-5.15.11-cp38-abi3-macosx_11_0_arm64.whl"
      sha256 "c8b03dd9380bb13c804f0bdb0f4956067f281785b5e12303d529f0462f9afdc2"
    end

    resource "PyQt5-Qt5" do
      url "https://files.pythonhosted.org/packages/24/8e/76366484d9f9dbe28e3bdfc688183433a7b82e314216e9b14c89e5fab690/pyqt5_qt5-5.15.18-py3-none-macosx_11_0_arm64.whl"
      sha256 "c656af9c1e6aaa7f59bf3d8995f2fa09adbf6762b470ed284c31dca80d686a26"
    end

    resource "numpy" do
      url "https://files.pythonhosted.org/packages/6c/90/c4a8a771b87fd7d1c9d6648fd08927825d31d80d98201149df14c9787214/numpy-1.24.0-cp311-cp311-macosx_11_0_arm64.whl"
      sha256 "ec3e5e8172a0a6a4f3c2e7423d4a8434c41349141b04744b11a90e017a95bad5"
    end
  end

  on_intel do
    resource "PyQt5" do
      url "https://files.pythonhosted.org/packages/49/f5/3fb696f4683ea45d68b7e77302eff173493ac81e43d63adb60fa760b9f91/PyQt5-5.15.11-cp38-abi3-macosx_11_0_x86_64.whl"
      sha256 "6cd75628f6e732b1ffcfe709ab833a0716c0445d7aec8046a48d5843352becb6"
    end

    resource "PyQt5-Qt5" do
      url "https://files.pythonhosted.org/packages/46/90/bf01ac2132400997a3474051dd680a583381ebf98b2f5d64d4e54138dc42/pyqt5_qt5-5.15.18-py3-none-macosx_10_13_x86_64.whl"
      sha256 "8bb997eb903afa9da3221a0c9e6eaa00413bbeb4394d5706118ad05375684767"
    end

    resource "numpy" do
      url "https://files.pythonhosted.org/packages/1e/8a/2e23dd804191f725ff18a30468f316267be41ad07148a97eac5f48aa1d1d/numpy-1.24.0-cp311-cp311-macosx_10_9_x86_64.whl"
      sha256 "4445f472b246cad6514cc09fbb5ecb7aab09ca2acc3c16f29f8dca6c468af501"
    end
  end

  # Architecture-independent resources
  resource "PyQt5-sip" do
    url "https://files.pythonhosted.org/packages/15/e4/451e465c75584a7cbd10e10404317b7443af83f56a64e02080b1f3cda5b5/pyqt5_sip-12.17.1-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "5134d637efadd108a70306bab55b3d7feaa951bf6b8162161a67ae847bea9130"
  end

  resource "pyqtgraph" do
    url "https://files.pythonhosted.org/packages/a2/88/8f2e85c0e171b7b08357f61551614ff39c4cab644a242bc80907e2275e47/pyqtgraph-0.13.1-py3-none-any.whl"
    sha256 "906b2784c213890bf2a1df43e3675eff1921ee894ab9673468747fb993ea2d6c"
  end

  resource "pyserial" do
    url "https://files.pythonhosted.org/packages/07/bc/587a445451b253b285629263eb51c2d8e9bcea4fc97826266d186f96f558/pyserial-3.5-py2.py3-none-any.whl"
    sha256 "c4451db6ba391ca6ca299fb3ec7bae67a5c55dde170964c7a14ceefec02f2cf0"
  end

  def install
    # Create a virtualenv with all Python dependencies
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install resources

    # Install app source into libexec alongside the virtualenv
    libexec.install Dir["*"]

    # Wrapper script: run app using the virtualenv Python, with libexec on PYTHONPATH
    (bin/"simplefocstudio").write <<~EOS
      #!/bin/bash
      PYTHONPATH="#{libexec}:$PYTHONPATH" exec "#{libexec}/bin/python3" "#{libexec}/simpleFOCStudio.py" "$@"
    EOS
    chmod 0755, bin/"simplefocstudio"
  end

  test do
    assert_predicate libexec/"simpleFOCStudio.py", :exist?
    assert_predicate libexec/"src/gui/mainWindow.py", :exist?
  end
end
