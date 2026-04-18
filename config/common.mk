# Overlay
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/duo-de/overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/duo-de/overlay/common

# World APN list
PRODUCT_COPY_FILES += \
    vendor/duo-de/prebuilt/common/etc/apns-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/apns-conf.xml

# Power whitelist
PRODUCT_COPY_FILES += \
    vendor/duo-de/config/permissions/custom-power-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/custom-power-whitelist.xml

# Enable lockscreen live wallpaper
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.wm.debug.lockscreen_live_wallpaper=true

# One Handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

# Use gestures by default
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural

# RRO Overlays
$(call inherit-product, vendor/duo-de/config/rro_overlays.mk)
