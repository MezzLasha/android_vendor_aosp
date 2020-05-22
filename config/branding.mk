# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

EXUI_BASE_VERSION = Progressive-1.0.2

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

CUSTOM_PLATFORM_VERSION := 10.0

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

CUSTOM_VERSION := ShapeShiftOS_$(EXUI_BASE_VERSION)_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
CUSTOM_VERSION_PROP := 10

CUSTOM_PROPERTIES := \
    org.extendedui.version=$(EXUI_BASE_VERSION) \
    org.extendedui.version.display=$(CUSTOM_VERSION) \
    org.extendedui.build_date=$(CUSTOM_BUILD_DATE) \
    org.extendedui.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    org.extendedui.build_type=$(CUSTOM_BUILD_TYPE)
