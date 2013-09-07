require 'formula'

class Alder < Formula
  homepage 'https://bitbucket.org/goshng/alder/wiki/Home'
  url 'https://bitbucket.org/goshng/alder/downloads/alder_pre-0.3.2.tar.gz'
  sha1 '988ee9303627f9c23e503975c2f55ead0b6c3363'

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
