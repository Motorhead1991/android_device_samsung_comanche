# Synapse Device
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/synapse/device/device.sh:root/res/synapse/files/device.sh \

# Synapse Actions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/synapse/actions/boolean:root/res/synapse/actions/boolean \
    $(LOCAL_PATH)/synapse/actions/bracket-option:root/res/synapse/actions/bracket-option \
    $(LOCAL_PATH)/synapse/actions/buildprop:root/res/synapse/actions/buildprop \
    $(LOCAL_PATH)/synapse/actions/cpuboostibf:root/res/synapse/actions/cpuboostibf \
    $(LOCAL_PATH)/synapse/actions/cpuset:root/res/synapse/actions/cpuset \
    $(LOCAL_PATH)/synapse/actions/cpuvolt:root/res/synapse/actions/cpuvolt \
    $(LOCAL_PATH)/synapse/actions/devtools:root/res/synapse/actions/devtools \
    $(LOCAL_PATH)/synapse/actions/dropcaches:root/res/synapse/actions/dropcaches \
    $(LOCAL_PATH)/synapse/actions/generic:root/res/synapse/actions/generic \
    $(LOCAL_PATH)/synapse/actions/gpuset:root/res/synapse/actions/gpuset \
    $(LOCAL_PATH)/synapse/actions/intellithermal:root/res/synapse/actions/intellithermal \
    $(LOCAL_PATH)/synapse/actions/ioset:root/res/synapse/actions/ioset \
    $(LOCAL_PATH)/synapse/actions/kcal:root/res/synapse/actions/kcal \
    $(LOCAL_PATH)/synapse/actions/live:root/res/synapse/actions/live \
    $(LOCAL_PATH)/synapse/actions/lmk:root/res/synapse/actions/lmk \
    $(LOCAL_PATH)/synapse/actions/mpdboostfreq:root/res/synapse/actions/mpdboostfreq \
    $(LOCAL_PATH)/synapse/actions/numeric:root/res/synapse/actions/numeric \
    $(LOCAL_PATH)/synapse/actions/powersuspend:root/res/synapse/actions/powersuspend \
    $(LOCAL_PATH)/synapse/actions/restorebackup:root/res/synapse/actions/restorebackup \
    $(LOCAL_PATH)/synapse/actions/serviceset:root/res/synapse/actions/servicetest \
    $(LOCAL_PATH)/synapse/actions/socset:root/res/synapse/actions/socset \
    $(LOCAL_PATH)/synapse/actions/soundfaux:root/res/synapse/actions/soundfaux \
    $(LOCAL_PATH)/synapse/actions/speakerfaux:root/res/synapse/actions/speakerfaux \
    $(LOCAL_PATH)/synapse/actions/sqlite:root/res/synapse/actions/sqlite \
    $(LOCAL_PATH)/synapse/actions/touch:root/res/synapse/actions/touch \
    $(LOCAL_PATH)/synapse/actions/voltage:root/res/synapse/actions/voltage \
    $(LOCAL_PATH)/synapse/actions/wake:root/res/synapse/actions/wake \
    $(LOCAL_PATH)/synapse/actions/zram:root/res/synapse/actions/zram \

# Synapse Debug
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/synapse/debug/last_kmsg:root/res/synapse/debug/last_kmsg \
    $(LOCAL_PATH)/synapse/debug/pvs_bin:root/res/synapse/debug/pvs_bin \
    $(LOCAL_PATH)/synapse/debug/speed_bin:root/res/synapse/debug/speed_bin \

# Synapse Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/synapse/files/bacon.sh:root/res/synapse/files/bacon.sh \
    $(LOCAL_PATH)/synapse/files/bck_prof:root/res/synapse/files/bck_prof \
    $(LOCAL_PATH)/synapse/files/dropcaches_prof:root/res/synapse/files/dropcaches_prof \
    $(LOCAL_PATH)/synapse/files/gammafaux_prof:root/res/synapse/files/gammafaux_prof \
    $(LOCAL_PATH)/synapse/files/gammafrancoN5_prof:root/res/synapse/files/gammafrancoN5_prof \
    $(LOCAL_PATH)/synapse/files/gammafranco_prof:root/res/synapse/files/gammafranco_prof \
    $(LOCAL_PATH)/synapse/files/gamma_prof:root/res/synapse/files/gamma_prof \
    $(LOCAL_PATH)/synapse/files/lmk_prof:root/res/synapse/files/lmk_prof \
    $(LOCAL_PATH)/synapse/files/sound_prof:root/res/synapse/files/sound_prof \
    $(LOCAL_PATH)/synapse/files/speaker_prof:root/res/synapse/files/speaker_prof \
    $(LOCAL_PATH)/synapse/files/volt_prof:root/res/synapse/files/volt_prof \
    $(LOCAL_PATH)/synapse/files/wake_prof:root/res/synapse/files/wake_prof \

# Synapse Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/synapse/config.json.generate:root/res/synapse/config.json.generate \
    $(LOCAL_PATH)/synapse/config.json.generate.adv:root/res/synapse/config.json.generate.adv \
    $(LOCAL_PATH)/synapse/config.json.generate.bprop:root/res/synapse/config.json.generate.bprop \
    $(LOCAL_PATH)/synapse/config.json.generate.cpu:root/res/synapse/config.json.generate.cpu \
    $(LOCAL_PATH)/synapse/config.json.generate.cpuvolt:root/res/synapse/config.json.generate.cpuvolt \
    $(LOCAL_PATH)/synapse/config.json.generate.error:root/res/synapse/config.json.generate.error \
    $(LOCAL_PATH)/synapse/config.json.generate.gpu:root/res/synapse/config.json.generate.gpu \
    $(LOCAL_PATH)/synapse/config.json.generate.hotplug:root/res/synapse/config.json.generate.hotplug \
    $(LOCAL_PATH)/synapse/config.json.generate.info:root/res/synapse/config.json.generate.info \
    $(LOCAL_PATH)/synapse/config.json.generate.io:root/res/synapse/config.json.generate.io \
    $(LOCAL_PATH)/synapse/config.json.generate.mem:root/res/synapse/config.json.generate.mem \
    $(LOCAL_PATH)/synapse/config.json.generate.misc:root/res/synapse/config.json.generate.misc \
    $(LOCAL_PATH)/synapse/config.json.generate.profile:root/res/synapse/config.json.generate.profile \
    $(LOCAL_PATH)/synapse/config.json.generate.screen:root/res/synapse/config.json.generate.screen \
    $(LOCAL_PATH)/synapse/config.json.generate.sound:root/res/synapse/config.json.generate.sound \
    $(LOCAL_PATH)/synapse/config.json.generate.speaker:root/res/synapse/config.json.generate.speaker \
    $(LOCAL_PATH)/synapse/config.json.generate.status:root/res/synapse/config.json.generate.status \
    $(LOCAL_PATH)/synapse/config.json.generate.thermal:root/res/synapse/config.json.generate.thermal \
    $(LOCAL_PATH)/synapse/config.json.generate.tools:root/res/synapse/config.json.generate.tools \
    $(LOCAL_PATH)/synapse/config.json.generate.wake:root/res/synapse/config.json.generate.wake \
    $(LOCAL_PATH)/synapse/sqlite3:root/res/synapse/sqlite3 \
    $(LOCAL_PATH)/synapse/uci:root/res/synapse/uci
