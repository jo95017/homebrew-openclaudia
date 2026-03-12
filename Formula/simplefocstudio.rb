class Simplefocstudio < Formula
  include Language::Python::Virtualenv

  desc "Graphical user interface for SimpleFOC BLDC/Stepper motor controllers"
  homepage "https://github.com/JorgeMaker/SimpleFOCStudio"
  url "https://github.com/JorgeMaker/SimpleFOCStudio/archive/refs/tags/v1.0.tar.gz"
  sha256 "c37225a822f31d6b626bea67d8bac70b49dcd8a5730c4e8a04cc063786aab915"
  license "MIT"

  depends_on "python@3.14"
  depends_on "pyqt@5"
  depends_on "numpy"

  resource "pyqtgraph" do
    url "https://files.pythonhosted.org/packages/72/cb/3c2e3482508fef3add90c7d28b015f47e078e63a9ab43a69722c5e4f64d6/pyqtgraph-0.13.1.tar.gz"
    sha256 "698f87f59db965727b33602a0b29058de21291d8b143dea878b50578aec0dc08"
  end

  resource "pyserial" do
    url "https://files.pythonhosted.org/packages/1e/7d/ae3f0a63f41e4d2f6cb66a5b57197850f919f59e558159a4dd3a818f5082/pyserial-3.5.tar.gz"
    sha256 "3c77e014170dfffbd816e6ffc205e9842efb10be9f58ec16d3e8675b4925cddb"
  end

  def install
    python = Formula["python@3.14"].opt_bin/"python3.14"
    venv = virtualenv_create(libexec, python)
    venv.pip_install resources

    # Expose Homebrew-managed packages to the virtualenv via .pth files
    site_packages = libexec/"lib/python3.14/site-packages"
    (site_packages/"homebrew-pyqt5.pth").write(Formula["pyqt@5"].opt_lib/"python3.14/site-packages")
    (site_packages/"homebrew-numpy.pth").write(Formula["numpy"].opt_lib/"python3.14/site-packages")

    libexec.install Dir["*"]

    (bin/"simplefocstudio").write <<~EOS
      #!/bin/bash
      PYTHONPATH="#{libexec}:$PYTHONPATH" exec "#{libexec}/bin/python3" "#{libexec}/simpleFOCStudio.py" "$@"
    EOS
    chmod 0755, bin/"simplefocstudio"
  end

  test do
    assert_path_exists libexec/"simpleFOCStudio.py"
    assert_path_exists libexec/"src/gui/mainWindow.py"
  end
end
