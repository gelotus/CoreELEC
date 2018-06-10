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

PKG_NAME="libogg"
PKG_VERSION="1.3.3"
PKG_SHA256="4f3fc6178a533d392064f14776b23c397ed4b9f48f5de297aba73b643f955c08"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_SITE="https://www.xiph.org/ogg/"
PKG_URL="http://downloads.xiph.org/releases/ogg/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="audio"
PKG_SHORTDESC="libogg: Open source bitstream container format"
PKG_LONGDESC="Libogg contains necessary functionality to create, decode, and work with Ogg bitstreams."
PKG_BUILD_FLAGS="+pic"

PKG_CONFIGURE_OPTS_TARGET="--enable-static --disable-shared"
