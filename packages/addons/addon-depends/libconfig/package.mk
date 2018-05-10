#################################################################################
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

PKG_NAME="libconfig"
PKG_VERSION="1.7.2"
PKG_SHA256="f67ac44099916ae260a6c9e290a90809e7d782d96cdd462cac656ebc5b685726"
PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_SITE="http://hyperrealm.com/libconfig/libconfig.html"
PKG_URL="https://github.com/hyperrealm/libconfig/archive/v$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="lib"
PKG_SHORTDESC="C/C++ Configuration File Library"
PKG_LONGDESC="C/C++ Configuration File Library"
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="--enable-static \
                           --disable-shared \
                           --disable-examples \
                           --with-sysroot=$SYSROOT_PREFIX"

