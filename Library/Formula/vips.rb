require 'formula'

class Vips < Formula
  homepage 'http://www.vips.ecs.soton.ac.uk/'
  url 'http://www.vips.ecs.soton.ac.uk/supported/7.30/vips-7.30.7.tar.gz'
  sha1 '49713df2eaf774d51fc9cf734b2bb19859f9047d'

  depends_on 'pkg-config' => :build
  depends_on :libpng
  depends_on :fontconfig
  depends_on 'gettext'
  depends_on 'glib'
  depends_on 'jpeg' => :optional
  depends_on 'libtiff' => :optional
  depends_on 'imagemagick' => :optional
  depends_on 'fftw' => :optional
  depends_on 'little-cms' => :optional
  depends_on 'pango' => :optional
  depends_on 'libexif' => :optional
  depends_on 'liboil' => :optional
  depends_on 'openexr' => :optional
  depends_on 'cfitsio' => :optional

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
