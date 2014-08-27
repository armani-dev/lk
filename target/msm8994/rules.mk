LOCAL_DIR := $(GET_LOCAL_DIR)

INCLUDES += -I$(LOCAL_DIR)/include -I$(LK_TOP_DIR)/platform/msm_shared

PLATFORM := msm8994

MEMBASE ?= 0x0F900000 # SDRAM
MEMSIZE := 0x00100000 # 1MB

BASE_ADDR    := 0x0000000

SCRATCH_ADDR := 0x10000000

DEFINES += DISPLAY_SPLASH_SCREEN=0
DEFINES += DISPLAY_TYPE_MIPI=1
DEFINES += DISPLAY_TYPE_DSI6G=1

MODULES += \
	dev/keys \
	dev/pmic/pm8x41 \
    lib/ptable \
    lib/libfdt

DEFINES += \
	MEMSIZE=$(MEMSIZE) \
	MEMBASE=$(MEMBASE) \
	BASE_ADDR=$(BASE_ADDR) \
	TAGS_ADDR=$(TAGS_ADDR) \
	KERNEL_ADDR=$(KERNEL_ADDR) \
	RAMDISK_ADDR=$(RAMDISK_ADDR) \
	SCRATCH_ADDR=$(SCRATCH_ADDR)


OBJS += \
    $(LOCAL_DIR)/init.o \
    $(LOCAL_DIR)/meminfo.o \
