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

PKG_NAME="gcc-linaro-aarch64-elf"
PKG_VERSION="4.9-2017.01"
PKG_SHA256="00c79aaf7ff9b1c22f7b0443a730056b3936561a4206af187ef61a4e3cab1716"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE=""
PKG_URL="https://releases.linaro.org/components/toolchain/binaries/${PKG_VERSION}/aarch64-elf/gcc-linaro-4.9.4-2017.01-x86_64_aarch64-elf.tar.xz"
PKG_SOURCE_DIR="gcc-linaro-4.9.4-2017.01-x86_64_aarch64-elf"
PKG_DEPENDS_HOST="toolchain"
PKG_SECTION="lang"
PKG_SHORTDESC=""
PKG_LONGDESC=""
PKG_TOOLCHAIN="manual"

makeinstall_host() {
  mkdir -p $TOOLCHAIN/lib/gcc-linaro-aarch64-elf/
    cp -a * $TOOLCHAIN/lib/gcc-linaro-aarch64-elf
}
