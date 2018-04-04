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

PKG_NAME="dosfstools"
PKG_VERSION="4.1"
PKG_SHA256="e6b2aca70ccc3fe3687365009dd94a2e18e82b688ed4e260e04b7412471cc173"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/dosfstools/dosfstools"
PKG_URL="https://github.com/dosfstools/dosfstools/releases/download/v$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain"
PKG_DEPENDS_INIT="toolchain dosfstools"
PKG_SECTION="tools"
PKG_SHORTDESC="dosfstools: utilities for making and checking MS-DOS FAT filesystems."
PKG_LONGDESC="dosfstools contains utilities for making and checking MS-DOS FAT filesystems."

PKG_MAKE_OPTS_TARGET="PREFIX=/usr"
PKG_MAKEINSTALL_OPTS_TARGET="PREFIX=/usr"

pre_build_host() {
  mkdir -p $PKG_BUILD/.$HOST_NAME
  cp -RP $PKG_BUILD/* $PKG_BUILD/.$HOST_NAME
}

make_host() {
  cd $PKG_BUILD/.$HOST_NAME
  make PREFIX=/usr
}

makeinstall_init() {
  mkdir -p $INSTALL/usr/sbin
    cp src/fsck.fat $INSTALL/usr/sbin
    ln -sf fsck.fat $INSTALL/usr/sbin/fsck.msdos
    ln -sf fsck.fat $INSTALL/usr/sbin/fsck.vfat
}

makeinstall_host() {
  mkdir -p $TOOLCHAIN/sbin
    cp src/mkfs.fat $TOOLCHAIN/sbin
    ln -sf mkfs.fat $TOOLCHAIN/sbin/mkfs.vfat
}
