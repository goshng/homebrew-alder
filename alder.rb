require 'formula'

class Alder < Formula
  homepage 'https://bitbucket.org/goshng/alder/wiki/Home'
  url 'https://bitbucket.org/goshng/alder/downloads/alder-pre-0.3.2-Source.tar.gz'
  sha1 '6c534908dc136962f5a87121a81be6cdcf6621f9'

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
