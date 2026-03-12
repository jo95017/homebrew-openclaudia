class Simplefocstudio < Formula
  include Language::Python::Virtualenv

  desc "Graphical user interface for SimpleFOC BLDC/Stepper motor controllers"
  homepage "https://github.com/JorgeMaker/SimpleFOCStudio"
  url "https://github.com/JorgeMaker/SimpleFOCStudio/archive/refs/tags/v1.0.tar.gz"
  sha256 "c37225a822f31d6b626bea67d8bac70b49dcd8a5730c4e8a04cc063786aab915"
  version "1.0"
  license "MIT"

  # pyqt@5 brings its own Python; we use that Python so PyQt5 bindings match
  depends_on "pyqt@5"

  resource "pyqtgraph" do
    url "https://files.pythonhosted.org/packages/72/cb/3c2e3482508fef3add90c7d28b015f47e078e63a9ab43a69722c5e4f64d6/pyqtgraph-0.13.1.tar.gz"
    sha256 "698f87f59db965727b33602a0b29058de21291d8b143dea878b50578aec0dc08"
  end

  resource "pyserial" do
    url "https://files.pythonhosted.org/packages/1e/7d/ae3f0a63f41e4d2f6cb66a5b57197850f919f59e558159a4dd3a818f5082/pyserial-3.5.tar.gz"
    sha256 "3c77e014170dfffbd816e6ffc205e9842efb10be9f58ec16d3e8675b4925cddb"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/5f/c7/5ca7c100dcc85b5ef1b176bdf87be5e4392c2c3018e13cc7cdef828c6a09/numpy-1.24.0.tar.gz"
    sha256 "c4ab7c9711fe6b235e86487ca74c1b092a6dd59a3cb45b63241ea0a148501853"
  end

  def install
    # Use pyqt@5's bundled Python so Qt bindings are ABI-compatible
    python = Formula["pyqt@5"].opt_bin/"python3"
    venv = virtualenv_create(libexec, python)
    venv.pip_install resources

    # Expose pyqt@5's own site-packages (PyQt5, PyQt5-sip) to the virtualenv
    python_version = Language::Python.major_minor_version(python)
    site_packages = libexec/"lib/python#{python_version}/site-packages"
    pyqt5_sp = Formula["pyqt@5"].opt_lib/"python#{python_version}/site-packages"
    (site_packages/"homebrew-pyqt5.pth").write(pyqt5_sp)

    # Copy app source into libexec (does not conflict with venv directories)
    libexec.install Dir["*"]

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
