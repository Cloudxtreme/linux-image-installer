#!/usr/bin/env bash

. common.sh

DOWNLOAD_BASE=$(realpath ${DOWNLOAD_PATH})

PACKAGES="${DOWNLOAD_BASE}/linux-headers-${KVER}-${KPATCH}_${KVER}-${KPATCH}.${PVER}_all.deb"
PACKAGES="${PACKAGES} ${DOWNLOAD_BASE}/linux-headers-${KVER}-${KPATCH}-${KVAR}_${KVER}-${KPATCH}.${PVER}_${ARCH}.deb"
PACKAGES="${PACKAGES} ${DOWNLOAD_BASE}/linux-image-${KVER}-${KPATCH}-${KVAR}_${KVER}-${KPATCH}.${PVER}_${ARCH}.deb"
PACKAGES="${PACKAGES} ${DOWNLOAD_BASE}/linux-signed-image-${KVER}-${KPATCH}-${KVAR}_${KVER}-${KPATCH}.${PVER}_${ARCH}.deb"

if [ "${KVAR}" == "generic" ]
then
  PACKAGES="${PACKAGES} ${DOWNLOAD_BASE}/linux-image-extra-${KVER}-${KPATCH}-${KVAR}_${KVER}-${KPATCH}.${PVER}_${ARCH}.deb"
fi

sudo dpkg --install ${PACKAGES}
