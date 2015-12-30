require 'formula'

class Meanwhile < Formula
  homepage 'http://meanwhile.sourceforge.net'
  head 'https://github.com/mrcsparker/meanwhile.git', :using => :git, :tag => '1.1.1'
  url 'https://github.com/mrcsparker/meanwhile/archive/1.1.1.tar.gz'
  sha1 '2c3446ed04e58781aa3803c83f5cbc7deef6dd8b'

  depends_on 'pkg-config' => :build
  depends_on 'glib'
  depends_on 'libtool'
  depends_on 'automake'

  def install
    system "./autogen.sh"
    system "./configure", "--disable-dependency-tracking",
                          "--disable-debug",
                          "--enable-doxygen=no",
                          "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
