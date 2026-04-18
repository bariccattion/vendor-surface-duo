# DUO-DE Vendor Config — unified from ponces/vendor_ponces + Archfx/duoVendor + Archfx/duoOverlays

# Overlay
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/duo-de/overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/duo-de/overlay/common

# World APN list
PRODUCT_COPY_FILES += \
    vendor/duo-de/prebuilt/common/etc/apns-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/apns-conf.xml

# Power whitelist
PRODUCT_COPY_FILES += \
    vendor/duo-de/config/permissions/custom-power-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/custom-power-whitelist.xml

# DUO-DE privapp permissions
PRODUCT_COPY_FILES += \
    vendor/duo-de/config/permissions/privapp-permissions-duo.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-duo.xml

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/duo-de/prebuilts/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip \
    vendor/duo-de/prebuilts/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation-dark.zip

# Enable lockscreen live wallpaper
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.wm.debug.lockscreen_live_wallpaper=true

# One Handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

# Use gestures by default
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural

# Posture Processor Service
PRODUCT_PACKAGES += \
    PostureProcessor

# GSI RRO Overlays (from ponces)
PRODUCT_PACKAGES += \
    GsiDocumentsUIOverlay \
    GsiFrameworksOverlay \
    GsiLauncher3Overlay \
    GsiSettingsProviderOverlay \
    GsiSystemUIOverlay \
    GsiWifiOverlay

# DUO-DE RRO Overlays (from duoOverlays)
PRODUCT_PACKAGES += \
    Duo1DisplayFeaturesOverlay \
    Duo1DisplayFeaturesWMShellOverlay \
    Duo1NoHingeAndroidOverlay \
    Duo1NoHingeWMShellOverlay \
    Duo2DisplayFeaturesOverlay \
    Duo2DisplayFeaturesWMShellOverlay \
    Duo2NoHingeAndroidOverlay \
    Duo2NoHingeWMShellOverlay \
    Duo2PostureProcessorOverlay \
    DuoAppHintingOverlay \
    DuoDisplayFeaturesOverlay \
    DuoSettingsIconsOverlay \
    DuoSettingsOverlay
