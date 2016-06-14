/*
   Copyright (c) 2013, The Linux Foundation. All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>
#include <stdio.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

#define ISMATCH(a, b) (!strncmp((a), (b), PROP_VALUE_MAX))

void vendor_load_properties()
{
    char platform[PROP_VALUE_MAX];
    char carrier[PROP_VALUE_MAX];
    char device[PROP_VALUE_MAX];
    char devicename[PROP_VALUE_MAX];
    char modelno[PROP_VALUE_MAX];
    char hardware_variant[92];
    FILE *fp;
    int rc;

    rc = property_get("ro.board.platform", platform);
    if (!rc || !ISMATCH(platform, ANDROID_TARGET))
        return;

    property_get("ro.boot.modelno", modelno);
    property_get("ro.boot.carrier", carrier);
    fp = popen("/system/xbin/sed -n '/Hardware/,/Revision/p' /proc/cpuinfo | /system/xbin/cut -d ':' -f2 | /system/xbin/head -1", "r");
    fgets(hardware_variant, sizeof(hardware_variant), fp);
    pclose(fp);

    property_set("ro.product.device", "asanti_c");
    property_set("ro.product.model", "PHOTON Q");
    if (ISMATCH(modelno, "XT897")) {
        /* xt897 CSpire */
        property_set("ro.build.description", "asanti_c_cspire-user 4.1.2 9.8.2Q-122_XT897_FFW-7 8 release-keys");
        property_set("ro.build.fingerprint", "motorola/XT897_us_csp/asanti_c:4.1.2/9.8.2Q-122_XT897_FFW-7/8:user/release-keys");
        property_set("ro.cdma.home.operator.alpha", "Cspire");
        property_set("ro.cdma.home.operator.numeric", "311230");
    } else if (ISMATCH(carrier, "sprint")) {
        /* xt897 Sprint */
        property_set("ro.build.description", "XT897_us_spr-user 4.1.2 9.8.2Q-122_XT897_FFW-5 6 release-keys");
        property_set("ro.build.fingerprint", "motorola/XT897_us_spr/asanti_c:4.1.2/9.8.2Q-122_XT897_FFW-5/6:user/release-keys");
        property_set("ro.cdma.international.eri", "2,74,124,125,126,157,158,159,193,194,195,196,197,198,228,229,230,231,232,233,234,235");
        property_set("ro.cdma.home.operator.alpha", "Sprint");
        property_set("ro.cdma.home.operator.numeric", "310120");
        property_set("ro.com.google.clientidbase.ms", "android-sprint-us");
        property_set("ro.com.google.clientidbase.am", "android-sprint-us");
        property_set("ro.com.google.clientidbase.yt", "android-sprint-us");
    }

    property_get("ro.product.device", device);
    strlcpy(devicename, device, sizeof(devicename));
    INFO("Found carrier id: %s hardware:%s model no: %s Setting build properties for %s device\n", carrier, hardware_variant, modelno, devicename);
}
