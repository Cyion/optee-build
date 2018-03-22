###############################################################################
# Following variables defines how the NS_USER (Non Secure User - Client
# Application), NS_KERNEL (Non Secure Kernel), S_KERNEL (Secure Kernel) and
# S_USER (Secure User - TA) are compiled
###############################################################################
override COMPILE_NS_USER   := 32
override COMPILE_NS_KERNEL := 32
override COMPILE_S_USER    := 32
override COMPILE_S_KERNEL  := 32

###############################################################################
# Includes
###############################################################################
include common.mk

###############################################################################
# Paths to git projects and various binaries
###############################################################################
STAGING_AREA    ?= $(ROOT)/optee_image
U-BOOT_PATH     ?= $(ROOT)/u-boot
UBOOT_SPL       ?= $(U-BOOT_PATH)/u-boot-raptor
UBOOT_IMG       ?= $(U-BOOT_PATH)/u-boot_raptor.img
UBOOT_ENV       ?= $(BUILD_PATH)/artik/uEnv.txt
LINUX_IMAGE     ?= $(LINUX_PATH)/arch/arm/boot/zImage
LINUX_DTBS      ?= $(wildcard $(LINUX_PATH)/arch/arm/boot/dts/exynos3250-artik5*.dtb)
FIT_SOURCE      ?= $(BUILD_PATH)/artik/fitImage-artik520.its
FIT_MAKEFILE    ?= $(BUILD_PATH)/artik/Makefile
OPTEE_PLATFORM  ?= samsung-artik520
U-BOOT_CONFIG   ?= artik5_defconfig
# until told otherwise, we can use the artik530 configuration here:
CONFIG_TYPE     ?= artik530_raptor
BUSYBOX_TARGET  ?= artik520

###############################################################################
# Debug options
###############################################################################
# DEBUG 1 is ON, 0 is OFF, alter this as required
DEBUG = 1

# Log levels for the TEE core
# Defines which messages are displayed on the secure console
# 0: none
# 1: error
# 2: error + warning
# 3: error + warning + debug
# 4: error + warning + debug + flow
# alter this as required during the dev process
CFG_TEE_CORE_LOG_LEVEL = 4

###############################################################################
# Include common to ARTIK builds
###############################################################################
include samsung/artik-common.mk
