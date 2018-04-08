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

PKG_NAME="libftdi1"
PKG_VERSION="1.4"
PKG_SHA256="ec36fb49080f834690c24008328a5ef42d3cf584ef4060f3a35aa4681cb31b74"
PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_SITE="http://www.intra2net.com/en/developer/libftdi/"
PKG_URL="http://www.intra2net.com/en/developer/libftdi/download/${PKG_NAME}-${PKG_VERSION}.tar.bz2"
PKG_DEPENDS_TARGET="toolchain libusb"
PKG_SECTION="devel"
PKG_SHORTDESC="libFTDI is an open source library to talk to FTDI chips"
PKG_LONGDESC="libFTDI is an open source library to talk to FTDI chips"
PKG_BUILD_FLAGS="+pic"

PKG_CMAKE_OPTS_TARGET="-DSTATICLIBS=ON \
                       -DDOCUMENTATION=FALSE \
                       -DEXAMPLES=FALSE \
                       -DFTDIPP=FALSE \
                       -DPYTHON_BINDINGS=FALSE"

makeinstall_target() {
  mkdir -p $SYSROOT_PREFIX/usr/include/libftdi1
    cp ../src/ftdi.h $SYSROOT_PREFIX/usr/include/libftdi1

  mkdir -p $SYSROOT_PREFIX/usr/lib
    cp src/libftdi1.a $SYSROOT_PREFIX/usr/lib

  mkdir -p $SYSROOT_PREFIX/usr/lib/pkgconfig
    cp libftdi1.pc $SYSROOT_PREFIX/usr/lib/pkgconfig
}
