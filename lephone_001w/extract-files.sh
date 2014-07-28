#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=3GW100
MANUFACTURER=lenovo

pushd ../../../ > /dev/null
TOP=$PWD
popd > /dev/null

LOCAL=$PWD
IMAGE=$LOCAL/image
VENDOR=$TOP/vendor/$MANUFACTURER
TMP_FILE=$VENDOR/$DEVICE/tmp_file
PROPRIETARY=$VENDOR/$DEVICE/proprietary

UNAYFFS=`type -path unyaffs`
if [ -z "$UNAYFFS" ]; then
    echo "unyaffs command not found"
    exit 0;
fi

EXLEBOOTIMG=`type -path exlebootimg`
if [ -z "$EXLEBOOTIMG" ]; then
    echo "exlebootimg command not found"
    exit 0;
fi

rm -rf $VENDOR/$DEVICE
mkdir -p $TMP_FILE
mkdir -p $PROPRIETARY

pushd $TMP_FILE > /dev/null
unyaffs $IMAGE/system.img > /dev/null
exlebootimg $IMAGE/boot.img > $PROPRIETARY/boot.log
popd > /dev/null

cp $TMP_FILE/bin/hci_qcomm_init                $PROPRIETARY/
cp $TMP_FILE/bin/qmuxd                         $PROPRIETARY/
cp $TMP_FILE/etc/firmware/yamato_pfp.fw        $PROPRIETARY/
cp $TMP_FILE/etc/firmware/yamato_pm4.fw        $PROPRIETARY/
cp $TMP_FILE/lib/libgsl.so                     $PROPRIETARY/
cp $TMP_FILE/lib/librpc.so                     $PROPRIETARY/
cp $TMP_FILE/lib/libauth.so                    $PROPRIETARY/
cp $TMP_FILE/lib/libcm.so                      $PROPRIETARY/
cp $TMP_FILE/lib/libdiag.so                    $PROPRIETARY/
cp $TMP_FILE/lib/libdll.so                     $PROPRIETARY/
cp $TMP_FILE/lib/libdsm.so                     $PROPRIETARY/
cp $TMP_FILE/lib/libdss.so                     $PROPRIETARY/
cp $TMP_FILE/lib/libgsdi_exp.so                $PROPRIETARY/
cp $TMP_FILE/lib/libgstk_exp.so                $PROPRIETARY/
cp $TMP_FILE/lib/libmmgsdilib.so               $PROPRIETARY/
cp $TMP_FILE/lib/libnv.so                      $PROPRIETARY/
cp $TMP_FILE/lib/liboncrpc.so                  $PROPRIETARY/
cp $TMP_FILE/lib/libpbmlib.so                  $PROPRIETARY/
cp $TMP_FILE/lib/libqmi.so                     $PROPRIETARY/
cp $TMP_FILE/lib/libqueue.so                   $PROPRIETARY/
cp $TMP_FILE/lib/libril-qc-1.so                $PROPRIETARY/
cp $TMP_FILE/lib/libril-qcril-hook-oem.so      $PROPRIETARY/
cp $TMP_FILE/lib/libwms.so                     $PROPRIETARY/
cp $TMP_FILE/lib/libwmsts.so                   $PROPRIETARY/
cp $TMP_FILE/lib/libmm-omxcore.so              $PROPRIETARY/
cp $TMP_FILE/lib/libOmxAacDec.so               $PROPRIETARY/
cp $TMP_FILE/lib/libOmxAacEnc.so               $PROPRIETARY/
cp $TMP_FILE/lib/libOmxAmrEnc.so               $PROPRIETARY/
cp $TMP_FILE/lib/libOmxCore.so                 $PROPRIETARY/
cp $TMP_FILE/lib/libOmxEvrcDec.so              $PROPRIETARY/
cp $TMP_FILE/lib/libOmxEvrcEnc.so              $PROPRIETARY/
cp $TMP_FILE/lib/libOmxMp3Dec.so               $PROPRIETARY/
cp $TMP_FILE/lib/libOmxQcelp13Dec.so           $PROPRIETARY/
cp $TMP_FILE/lib/libOmxQcelp13Enc.so           $PROPRIETARY/
cp $TMP_FILE/lib/libOmxVdec.so                 $PROPRIETARY/
cp $TMP_FILE/lib/libOmxVidEnc.so               $PROPRIETARY/
cp $TMP_FILE/lib/libcommondefs.so              $PROPRIETARY/
cp $TMP_FILE/lib/libloc-rpc.so                 $PROPRIETARY/
cp $TMP_FILE/lib/libloc.so                     $PROPRIETARY/
cp $TMP_FILE/lib/libloc_api.so                 $PROPRIETARY/
cp $TMP_FILE/lib/libloc_ext.so                 $PROPRIETARY/
cp $TMP_FILE/lib/libcamera.so                  $PROPRIETARY/
cp $TMP_FILE/lib/liboemcamera.so               $PROPRIETARY/
cp $TMP_FILE/lib/libmmipl.so                   $PROPRIETARY/
cp $TMP_FILE/lib/libmmjpeg.so                  $PROPRIETARY/
cp $TMP_FILE/lib/egl/libEGL_adreno200.so       $PROPRIETARY/
cp $TMP_FILE/lib/egl/libGLESv1_CM_adreno200.so $PROPRIETARY/
cp $TMP_FILE/lib/egl/libGLESv2_adreno200.so    $PROPRIETARY/
cp $TMP_FILE/lib/egl/libq3dtools_adreno200.so  $PROPRIETARY/
cp $TMP_FILE/wifi/ar6000.ko                    $PROPRIETARY/
cp $TMP_FILE/wifi/athwlan.bin.z77              $PROPRIETARY/
cp $TMP_FILE/wifi/data.patch.hw2_0.bin         $PROPRIETARY/

(cat << EOF) | sed s/__MANUFACTURER__/$MANUFACTURER/g | sed s/__DEVICE__/$DEVICE/g > $VENDOR/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libloc.so:obj/lib/libloc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so

# All the blobs necessary for 3GW100
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hci_qcomm_init:system/bin/hci_qcomm_init \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/qmuxd:system/bin/qmuxd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/librpc.so:system/lib/librpc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libauth.so:system/lib/libauth.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcm.so:system/lib/libcm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdiag.so:system/lib/libdiag.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdll.so:system/lib/libdll.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdsm.so:system/lib/libdsm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdss.so:system/lib/libdss.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnv.so:system/lib/libnv.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libqmi.so:system/lib/libqmi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libqueue.so:system/lib/libqueue.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libwms.so:system/lib/libwms.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libwmsts.so:system/lib/libwmsts.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgsl.so:system/lib/libgsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmm-omxcore.so:system/lib/libmm-omxcore.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxAacDec.so:system/lib/libOmxAacDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxCore.so:system/lib/libOmxCore.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxVdec.so:system/lib/libOmxVdec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcommondefs.so:system/lib/libcommondefs.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libloc-rpc.so:system/lib/libloc-rpc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libloc.so:system/lib/libloc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libloc_api.so:system/lib/libloc_api.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libloc_ext.so:system/lib/libloc_ext.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin

./setup-makefiles.sh

