# DUO-DE Vendor Config — unified from ponces/vendor_ponces + Archfx/duoVendor + Archfx/duoOverlays

# Overlay
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/surface-duo/overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/surface-duo/overlay/common

# World APN list
PRODUCT_COPY_FILES += \
    vendor/surface-duo/prebuilt/common/etc/apns-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/apns-conf.xml

# Power whitelist
PRODUCT_COPY_FILES += \
    vendor/surface-duo/config/permissions/custom-power-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/custom-power-whitelist.xml

# DUO-DE privapp permissions
PRODUCT_COPY_FILES += \
    vendor/surface-duo/config/permissions/privapp-permissions-duo.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-duo.xml

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/surface-duo/prebuilt/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip \
    vendor/surface-duo/prebuilt/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation-dark.zip

# Enable lockscreen live wallpaper
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.wm.debug.lockscreen_live_wallpaper=true

# Use gestures by default
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural

# Posture Processor Service
PRODUCT_PACKAGES += \
    PostureProcessor \
    libms_pen_charger

# Surface Duo permissions and device state config
PRODUCT_COPY_FILES += \
    vendor/surface-duo/config/permissions/com.microsoft.surface.duo_v1.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.microsoft.surface.duo_v1.xml \
    vendor/surface-duo/config/device_state_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/devicestate/device_state_configuration.xml

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
