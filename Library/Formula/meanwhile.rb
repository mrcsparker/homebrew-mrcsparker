require 'formula'

class Meanwhile < Formula
  url 'https://github.com/downloads/mrcsparker/meanwhile/meanwhile-1.1.1.tar.gz'
  sha1 'dee577b129f123448c2dfbc93640e827830c3090'
  homepage 'http://meanwhile.sourceforge.net'

  depends_on 'pkg-config' => :build
  depends_on 'glib'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--disable-debug",
                          "--enable-doxygen=no",
                          "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
