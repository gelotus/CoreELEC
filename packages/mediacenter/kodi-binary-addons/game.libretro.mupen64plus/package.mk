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

PKG_NAME="game.libretro.mupen64plus"
PKG_VERSION="3cbe9a1"
PKG_SHA256="f9d73aa96876276a02a98da56245bc2e0966c10c3ca2a939f6b20bb45b6a6c7d"
PKG_REV="105"
# no openGL suport in retroplayer yet
PKG_ARCH="none"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/kodi-game/game.libretro.mupen64plus"
PKG_URL="https://github.com/kodi-game/game.libretro.mupen64plus/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain kodi-platform libretro-mupen64plus"
PKG_SECTION=""
PKG_SHORTDESC="game.libretro.mupen64plus: Mupen 64 Plus emulator for Kodi"
PKG_LONGDESC="game.libretro.mupen64plus: Mupen 64 Plus emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
