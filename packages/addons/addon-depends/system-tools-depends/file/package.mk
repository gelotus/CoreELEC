################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2016-present Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="file"
PKG_VERSION="d323676"
PKG_SHA256="6174e9d89bf58050e6569b677247db4281bc7b377158e672969eeb35cc6fafa1"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_SITE="http://www.darwinsys.com/file/"
PKG_URL="https://github.com/file/file/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST="ccache:host"
PKG_DEPENDS_TARGET="toolchain zlib file:host"
PKG_SECTION="tools"
PKG_LONGDESC="The file utility is used to determine the types of various files."
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_HOST="--enable-fsect-man5 --enable-static --disable-shared"
PKG_CONFIGURE_OPTS_TARGET="--enable-fsect-man5 --enable-static --disable-shared"

makeinstall_target() {
  :
}
