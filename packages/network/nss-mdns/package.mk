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

PKG_NAME="nss-mdns"
PKG_VERSION="0.14.1"
PKG_SHA256="a2094101b735cade45048764ea594bdae2bfa9399837f3c852a5b264416e9c8c"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/lathiat/nss-mdns"
PKG_URL="https://github.com/lathiat/nss-mdns/releases/download/v$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain avahi"
PKG_SECTION="network"
PKG_SHORTDESC="nss-mdns is a plugin for nss to allow name resolution via Multicast DNS."
PKG_LONGDESC="nss-mdns is a plugin for the GNU Name Service Switch (NSS) functionality of the GNU C Library (glibc) providing host name resolution via Multicast DNS"
PKG_TOOLCHAIN="autotools"

post_makeinstall_target() {
  mkdir -p $INSTALL/etc
  cp $PKG_DIR/config/nsswitch.conf $INSTALL/etc/nsswitch.conf
}
