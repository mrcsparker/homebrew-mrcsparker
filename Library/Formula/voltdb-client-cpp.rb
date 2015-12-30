require 'formula'

class VoltdbClientCpp < Formula
  homepage 'https://voltdb.com'
  url 'https://github.com/VoltDB/voltdb-client-cpp/archive/voltdb-client-php-extensions-5.2.tar.gz'
  sha1 'cd98599bc70e4d0c05f379c76e8ac59db1c2666e'

  depends_on 'boost'

  def install
    system 'make'
    lib.install 'libvoltdbcpp.a', 'libvoltdbcpp.so'
  end
end
