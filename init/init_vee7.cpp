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
#include <fcntl.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

void vendor_load_properties() {
    char device[PROP_VALUE_MAX];
    char bbversion[92];
    FILE *fp;

    fp = popen("/system/bin/strings /dev/block/mmcblk0p12 | /system/bin/egrep 'V10.-|-V20.-' | /system/bin/egrep 'P710|P712|P713|P713GO|P714|P715|P716'", "r");
    fgets(bbversion, sizeof(bbversion), fp);
    pclose(fp);

    if (strstr(bbversion, "P710")) {
        property_set("ro.product.device", "P710");
        property_set("ro.product.model", "P710");
        property_set("persist.radio.multisim.config", "none");
        property_set("persist.multisim.config", "none");
        property_set("ro.multi.rild", "false");
    } else if (strstr(bbversion, "P712")) {
        property_set("ro.product.device", "P712");
        property_set("ro.product.model", "P712");
        property_set("persist.radio.multisim.config", "none");
        property_set("persist.multisim.config", "none");
        property_set("ro.multi.rild", "false");
    } else if (strstr(bbversion, "P713")) {
        property_set("ro.product.device", "P713");
        property_set("ro.product.model", "P713");
        property_set("persist.radio.multisim.config", "none");
        property_set("persist.multisim.config", "none");
        property_set("ro.multi.rild", "false");
    } else if (strstr(bbversion, "P713GO")) {
        property_set("ro.product.device", "P713GO");
        property_set("ro.product.model", "P713GO");
        property_set("persist.radio.multisim.config", "none");
        property_set("persist.multisim.config", "none");
        property_set("ro.multi.rild", "false");
    } else if (strstr(bbversion, "P714")) {
        property_set("ro.product.device", "P714");
        property_set("ro.product.model", "P714");
        property_set("persist.radio.multisim.config", "none");
        property_set("persist.multisim.config", "none");
        property_set("ro.multi.rild", "false");
    } else if (strstr(bbversion, "P715")) {
        property_set("ro.product.device", "P715");
        property_set("ro.product.model", "P715");
        property_set("persist.radio.multisim.config", "dsds");
        property_set("persist.multisim.config", "dsds");
        property_set("ro.multi.rild", "true");
    } else if (strstr(bbversion, "P716")) {
        property_set("ro.product.device", "P716");
        property_set("ro.product.model", "P716");
        property_set("persist.radio.multisim.config", "dsds");
        property_set("persist.multisim.config", "dsds");
        property_set("ro.multi.rild", "true");
    };

    property_get("ro.product.device", device);
    ERROR("Found %s baseband setting build properties for %s device\n", bbversion, device);
    property_set("gsm.version.baseband", "neutrondev");
}
