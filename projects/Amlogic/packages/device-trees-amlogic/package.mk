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

PKG_NAME="device-trees-amlogic"
PKG_VERSION="bdd1e7d"
PKG_SHA256="26fdb5c5346ef7a8ebc34575f0a3b5d6f891b7b78c0f0f8c15cda6f54bfdaecb"
PKG_LICENSE="GPL"
PKG_URL="https://github.com/CoreELEC/device-trees-amlogic/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_IS_KERNEL_PKG="yes"
PKG_TOOLCHAIN="manual"

make_target() {
  # Enter kernel directory
  pushd $BUILD/linux-$(kernel_version) > /dev/null

  # Device trees already present in kernel tree we want to include
  EXTRA_TREES=( \
                gxbb_p201 gxbb_p200_1G_wetek_hub gxbb_p200_2G_wetek_play_2 \
                gxl_p212_1g gxl_p212_2g gxl_p281_1g gxl_p212_1g_lepotato gxl_p212_2g_lepotato \
                gxm_q200_2g gxm_q201_1g gxm_q201_2g \
	      )

  # Add trees to the list
  for f in ${EXTRA_TREES[@]}; do
    DTB_LIST="$DTB_LIST $f.dtb"
  done

  # Copy all device trees to kernel source folder and create a list
  cp -f $PKG_BUILD/*.dts* arch/$TARGET_KERNEL_ARCH/boot/dts/amlogic/
  for f in $PKG_BUILD/*.dts; do
    DTB_NAME="$(basename $f .dts).dtb"
    DTB_LIST="$DTB_LIST $DTB_NAME"
  done

  # Filter device tree list depending on project
  case "$DEVICE" in
    S905)
      for f in ${DTB_LIST[@]}; do
        [[ "$f" == gxbb* ]] || [[ "$f" == gxl* ]] && DTB_LIST_FILTERED="$DTB_LIST_FILTERED $f"
      done
      ;;
    S912)
      for f in ${DTB_LIST[@]}; do
        [[ "$f" == gxm* ]] && DTB_LIST_FILTERED="$DTB_LIST_FILTERED $f"
      done
      ;;
    *)
      for f in ${DTB_LIST[@]}; do
        if listcontains "$KERNEL_UBOOT_EXTRA_TARGET" "$f"; then
          DTB_LIST_FILTERED="$DTB_LIST_FILTERED $f"
        fi
      done
      ;;
  esac

  # Compile device trees
  kernel_make $DTB_LIST_FILTERED
  mv arch/$TARGET_KERNEL_ARCH/boot/dts/amlogic/*.dtb $PKG_BUILD

  popd > /dev/null
}

makeinstall_target() {
  case "$DEVICE" in
    S905|S912)
      mkdir -p $INSTALL/usr/share/bootloader/device_trees
      cp -a $PKG_BUILD/*.dtb $INSTALL/usr/share/bootloader/device_trees
    ;;
  esac
}
