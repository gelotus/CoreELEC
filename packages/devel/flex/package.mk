################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="flex"
PKG_VERSION="b33fd4c"
PKG_SHA256="3d7f63804b090669a2c5c8cb5ed48e50b94cfa797cba2781d7bded9164a1e25c"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/westes/flex/"
PKG_URL="https://github.com/westes/flex/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_HOST="ccache:host"
PKG_SECTION="toolchain/devel"
PKG_SHORTDESC="flex: Fast lexical analyzer generator"
PKG_LONGDESC="flex is a tool for generating programs that perform pattern-matching on text."
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_HOST="--enable-static --disable-shared --disable-rpath --with-gnu-ld"

post_makeinstall_host() {
  cat > $TOOLCHAIN/bin/lex << "EOF"
#!/bin/sh
exec flex "$@"
EOF

  chmod -v 755 $TOOLCHAIN/bin/lex
}
