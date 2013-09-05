require 'formula'

class Alder < Formula
  homepage ''
  url 'https://bitbucket.org/goshng/alder/downloads/alder-pre-0.3.1-Source.tar.gz'
  sha1 'c5f3cb396eee6bd42efa0f0827dc47a5fe759591'

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
