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

PKG_NAME="libxkbcommon"
PKG_VERSION="0.8.0"
PKG_SHA256="e829265db04e0aebfb0591b6dc3377b64599558167846c3f5ee5c5e53641fe6d"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://xkbcommon.org"
PKG_URL="http://xkbcommon.org/download/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain xkeyboard-config"
PKG_SECTION="wayland"
PKG_SHORTDESC="xkbcommon: a library to handle keyboard descriptions"
PKG_LONGDESC="xkbcommon is a library to handle keyboard descriptions, including loading them from disk, parsing them and handling their state. It's mainly meant for client toolkits, window systems, and other system applications; currently that includes Wayland, kmscon, GTK+, Qt, Clutter, and more. It is also used by some XCB applications for proper keyboard support."

if [ "$DISPLAYSERVER" = "x11" ]; then
  PKG_MESON_OPTS_TARGET="-Denable-x11=true \
                         -Denable-wayland=false \
                         -Denable-docs=false"
else if [ "$DISPLAYSERVER" = "wayland" ]; then
  PKG_MESON_OPTS_TARGET="-Denable-wayland=true \
                         -Denable-x11=false \
                         -Denable-docs=false"
else
  PKG_MESON_OPTS_TARGET="-Denable-x11=false \
                         -Denable-wayland=false \
                         -Denable-docs=false"
fi
fi

