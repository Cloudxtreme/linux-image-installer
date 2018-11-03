#!/usr/bin/env bash

. common.sh

BASE=http://mirror.optus.net/ubuntu/pool/main/l
DOWNLOAD_BASE=$(realpath ${DOWNLOAD_PATH})

echo "Fetching linux-headers-${KVER}-${KPATCH}"
wget --continue --quiet \
  --output-document=${DOWNLOAD_BASE}/linux-headers-${KVER}-${KPATCH}_${KVER}-${KPATCH}.${PVER}_all.deb \
  ${BASE}/linux/linux-headers-${KVER}-${KPATCH}_${KVER}-${KPATCH}.${PVER}_all.deb
echo "Fetching linux-headers-${KVER}-${KPATCH}-${KVAR}"
wget --continue --quiet \
  --output-document=${DOWNLOAD_BASE}/linux-headers-${KVER}-${KPATCH}-${KVAR}_${KVER}-${KPATCH}.${PVER}_${ARCH}.deb \
  ${BASE}/linux/linux-headers-${KVER}-${KPATCH}-${KVAR}_${KVER}-${KPATCH}.${PVER}_${ARCH}.deb
echo "Fetching linux-image-${KVER}-${KPATCH}-${KVAR}"
wget --continue --quiet \
  --output-document=${DOWNLOAD_BASE}/linux-image-${KVER}-${KPATCH}-${KVAR}_${KVER}-${KPATCH}.${PVER}_${ARCH}.deb \
  ${BASE}/linux/linux-image-${KVER}-${KPATCH}-${KVAR}_${KVER}-${KPATCH}.${PVER}_${ARCH}.deb
echo "Fetching linux-signed-image-${KVER}-${KPATCH}-${KVAR}"
wget --continue --quiet \
  --output-document=${DOWNLOAD_BASE}/linux-signed-image-${KVER}-${KPATCH}-${KVAR}_${KVER}-${KPATCH}.${PVER}_${ARCH}.deb \
  ${BASE}/linux-signed/linux-signed-image-${KVER}-${KPATCH}-${KVAR}_${KVER}-${KPATCH}.${PVER}_${ARCH}.deb

if [ "${KVAR}" == "generic" ]
then
  echo "Fetching linux-image-extra-${KVER}-${KPATCH}-${KVAR}"
  wget --continue --quiet \
    --output-document=${DOWNLOAD_BASE}/linux-image-extra-${KVER}-${KPATCH}-${KVAR}_${KVER}-${KPATCH}.${PVER}_${ARCH}.deb \
    ${BASE}/linux/linux-image-extra-${KVER}-${KPATCH}-${KVAR}_${KVER}-${KPATCH}.${PVER}_${ARCH}.deb
fi
