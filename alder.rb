require 'formula'

class Alder < Formula
  homepage 'https://bitbucket.org/goshng/alder/wiki/Home'
  url 'https://bitbucket.org/goshng/alder/downloads/alder_pre-0.3.2.tar.gz'
  sha1 '80dd6b5fe4daac7adf17acf1596c854e0e30955e'

  depends_on 'cmake' => :build

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "alder-pre"
  end
end
