require 'formula'

class Cutadapt < Formula
  homepage ''
  url 'http://cutadapt.googlecode.com/files/cutadapt-1.2.1.tar.gz'
  sha1 '35d912ab524238a145c05bc5dd460b1177a3cf97'

  depends_on python

  def install
    system "python", "setup.py", "build"
    system "python", "setup.py", "install", "--prefix=#{prefix}"
  end

  test do
    system "cutadapt", "--version"
  end
end
