ifeq ($(CUSTOM_BUILD_TYPE), OFFICIAL)

CUSTOM_OTA_VERSION_CODE := android_10

CUSTOM_PROPERTIES += \
    org.extendedui.ota.version_code=$(CUSTOM_OTA_VERSION_CODE)

#PRODUCT_PACKAGES += \
#    Updates

endif
