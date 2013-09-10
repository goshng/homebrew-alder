require 'formula'

class PrinseqLite < Formula
  homepage 'http://prinseq.sourceforge.net'
  url 'http://sourceforge.net/projects/prinseq/files/standalone/prinseq-lite-0.20.3.tar.gz'
  sha1 '128221c0e1f55c8582b1898c532680ed056e1c6e'

  def install
    bin.install "prinseq-lite.pl" 
    bin.install "prinseq-graphs.pl" 
    bin.install "prinseq-graphs-noPCA.pl" 
  end

  test do
    system "prinseq-lite.pl", "--version"
  end
end
