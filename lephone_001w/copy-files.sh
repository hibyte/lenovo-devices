#!/bin/bash

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

DEVICE=lephone_001w

pushd ../../../ > /dev/null
TOP=$PWD
popd > /dev/null

LOCAL=$PWD
VENDOR=$TOP/vendor/lenovo
PROPRIETARY=$VENDOR/$DEVICE/proprietary

rm -rf $VENDOR/$DEVICE
mkdir -p $PROPRIETARY

cp $LOCAL/proprietary/bin/qmuxd                          $PROPRIETARY/
cp $LOCAL/proprietary/bin/hci_qcomm_init                 $PROPRIETARY/
cp $LOCAL/proprietary/etc/firmware/yamato_pfp.fw         $PROPRIETARY/
cp $LOCAL/proprietary/etc/firmware/yamato_pm4.fw         $PROPRIETARY/
cp $LOCAL/proprietary/lib/libauth.so                     $PROPRIETARY/
cp $LOCAL/proprietary/lib/libcamera.so                   $PROPRIETARY/
cp $LOCAL/proprietary/lib/libcm.so                       $PROPRIETARY/
cp $LOCAL/proprietary/lib/libcommondefs.so               $PROPRIETARY/
cp $LOCAL/proprietary/lib/libdiag.so                     $PROPRIETARY/
cp $LOCAL/proprietary/lib/libdll.so                      $PROPRIETARY/
cp $LOCAL/proprietary/lib/libdsm.so                      $PROPRIETARY/
cp $LOCAL/proprietary/lib/libdss.so                      $PROPRIETARY/
cp $LOCAL/proprietary/lib/libgsdi_exp.so                 $PROPRIETARY/
cp $LOCAL/proprietary/lib/libgsl.so                      $PROPRIETARY/
cp $LOCAL/proprietary/lib/libgstk_exp.so                 $PROPRIETARY/
cp $LOCAL/proprietary/lib/libloc.so                      $PROPRIETARY/
cp $LOCAL/proprietary/lib/libloc_api.so                  $PROPRIETARY/
cp $LOCAL/proprietary/lib/libloc_ext.so                  $PROPRIETARY/
cp $LOCAL/proprietary/lib/libloc-rpc.so                  $PROPRIETARY/
cp $LOCAL/proprietary/lib/libmmgsdilib.so                $PROPRIETARY/
cp $LOCAL/proprietary/lib/libmmipl.so                    $PROPRIETARY/
cp $LOCAL/proprietary/lib/libmmjpeg.so                   $PROPRIETARY/
cp $LOCAL/proprietary/lib/libmm-omxcore.so               $PROPRIETARY/
cp $LOCAL/proprietary/lib/libnv.so                       $PROPRIETARY/
cp $LOCAL/proprietary/lib/liboemcamera.so                $PROPRIETARY/
cp $LOCAL/proprietary/lib/libOmxAacDec.so                $PROPRIETARY/
cp $LOCAL/proprietary/lib/libOmxAacEnc.so                $PROPRIETARY/
cp $LOCAL/proprietary/lib/libOmxAmrEnc.so                $PROPRIETARY/
cp $LOCAL/proprietary/lib/libOmxCore.so                  $PROPRIETARY/
cp $LOCAL/proprietary/lib/libOmxEvrcDec.so               $PROPRIETARY/
cp $LOCAL/proprietary/lib/libOmxEvrcEnc.so               $PROPRIETARY/
cp $LOCAL/proprietary/lib/libOmxMp3Dec.so                $PROPRIETARY/
cp $LOCAL/proprietary/lib/libOmxQcelp13Dec.so            $PROPRIETARY/
cp $LOCAL/proprietary/lib/libOmxQcelp13Enc.so            $PROPRIETARY/
cp $LOCAL/proprietary/lib/libOmxVdec.so                  $PROPRIETARY/
cp $LOCAL/proprietary/lib/libOmxVidEnc.so                $PROPRIETARY/
cp $LOCAL/proprietary/lib/liboncrpc.so                   $PROPRIETARY/
cp $LOCAL/proprietary/lib/libpbmlib.so                   $PROPRIETARY/
cp $LOCAL/proprietary/lib/libqmi.so                      $PROPRIETARY/
cp $LOCAL/proprietary/lib/libqueue.so                    $PROPRIETARY/
cp $LOCAL/proprietary/lib/libril-qc-1.so                 $PROPRIETARY/
cp $LOCAL/proprietary/lib/libril-qcril-hook-oem.so       $PROPRIETARY/
cp $LOCAL/proprietary/lib/librpc.so                      $PROPRIETARY/
cp $LOCAL/proprietary/lib/libwms.so                      $PROPRIETARY/
cp $LOCAL/proprietary/lib/libwmsts.so                    $PROPRIETARY/
cp $LOCAL/proprietary/lib/egl/libEGL_adreno200.so        $PROPRIETARY/
cp $LOCAL/proprietary/lib/egl/libGLESv1_CM_adreno200.so  $PROPRIETARY/
cp $LOCAL/proprietary/lib/egl/libGLESv2_adreno200.so     $PROPRIETARY/
cp $LOCAL/proprietary/lib/egl/libq3dtools_adreno200.so   $PROPRIETARY/
cp $LOCAL/proprietary/wifi/athwlan.bin.z77               $PROPRIETARY/
cp $LOCAL/proprietary/wifi/data.patch.hw2_0.bin          $PROPRIETARY/

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > $VENDOR/$DEVICE/$DEVICE-vendor-blobs.mk
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

# This file is generated by device/lenovo/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/lenovo/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so \\
    vendor/lenovo/__DEVICE__/proprietary/libloc.so:obj/lib/libloc.so

# All the blobs necessary for 3GW100
PRODUCT_COPY_FILES += \\
    vendor/lenovo/__DEVICE__/proprietary/qmuxd:system/bin/qmuxd \\
    vendor/lenovo/__DEVICE__/proprietary/hci_qcomm_init:system/bin/hci_qcomm_init \\
    vendor/lenovo/__DEVICE__/proprietary/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/lenovo/__DEVICE__/proprietary/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/lenovo/__DEVICE__/proprietary/libauth.so:system/lib/libauth.so \\
    vendor/lenovo/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
    vendor/lenovo/__DEVICE__/proprietary/libcm.so:system/lib/libcm.so \\
    vendor/lenovo/__DEVICE__/proprietary/libcommondefs.so:system/lib/libcommondefs.so \\
    vendor/lenovo/__DEVICE__/proprietary/libdiag.so:system/lib/libdiag.so \\
    vendor/lenovo/__DEVICE__/proprietary/libdll.so:system/lib/libdll.so \\
    vendor/lenovo/__DEVICE__/proprietary/libdsm.so:system/lib/libdsm.so \\
    vendor/lenovo/__DEVICE__/proprietary/libdss.so:system/lib/libdss.so \\
    vendor/lenovo/__DEVICE__/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/lenovo/__DEVICE__/proprietary/libgsl.so:system/lib/libgsl.so \\
    vendor/lenovo/__DEVICE__/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/lenovo/__DEVICE__/proprietary/libloc.so:system/lib/libloc.so \\
    vendor/lenovo/__DEVICE__/proprietary/libloc_api.so:system/lib/libloc_api.so \\
    vendor/lenovo/__DEVICE__/proprietary/libloc_ext.so:system/lib/libloc_ext.so \\
    vendor/lenovo/__DEVICE__/proprietary/libloc-rpc.so:system/lib/libloc-rpc.so \\
    vendor/lenovo/__DEVICE__/proprietary/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/lenovo/__DEVICE__/proprietary/libmmipl.so:system/lib/libmmipl.so \\
    vendor/lenovo/__DEVICE__/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/lenovo/__DEVICE__/proprietary/libmm-omxcore.so:system/lib/libmm-omxcore.so \\
    vendor/lenovo/__DEVICE__/proprietary/libnv.so:system/lib/libnv.so \\
    vendor/lenovo/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/lenovo/__DEVICE__/proprietary/libOmxAacDec.so:system/lib/libOmxAacDec.so \\
    vendor/lenovo/__DEVICE__/proprietary/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \\
    vendor/lenovo/__DEVICE__/proprietary/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \\
    vendor/lenovo/__DEVICE__/proprietary/libOmxCore.so:system/lib/libOmxCore.so \\
    vendor/lenovo/__DEVICE__/proprietary/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
    vendor/lenovo/__DEVICE__/proprietary/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
    vendor/lenovo/__DEVICE__/proprietary/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \\
    vendor/lenovo/__DEVICE__/proprietary/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \\
    vendor/lenovo/__DEVICE__/proprietary/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \\
    vendor/lenovo/__DEVICE__/proprietary/libOmxVdec.so:system/lib/libOmxVdec.so \\
    vendor/lenovo/__DEVICE__/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/lenovo/__DEVICE__/proprietary/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/lenovo/__DEVICE__/proprietary/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/lenovo/__DEVICE__/proprietary/libqmi.so:system/lib/libqmi.so \\
    vendor/lenovo/__DEVICE__/proprietary/libqueue.so:system/lib/libqueue.so \\
    vendor/lenovo/__DEVICE__/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/lenovo/__DEVICE__/proprietary/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
    vendor/lenovo/__DEVICE__/proprietary/librpc.so:system/lib/librpc.so \\
    vendor/lenovo/__DEVICE__/proprietary/libwms.so:system/lib/libwms.so \\
    vendor/lenovo/__DEVICE__/proprietary/libwmsts.so:system/lib/libwmsts.so \\
    vendor/lenovo/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/lenovo/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/lenovo/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/lenovo/__DEVICE__/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/lenovo/__DEVICE__/proprietary/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \\
    vendor/lenovo/__DEVICE__/proprietary/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin
EOF

./setup-makefiles.sh
