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
STAGING_AREA    ?= $(ROOT)/out
U-BOOT_PATH     ?= $(ROOT)/u-boot
UBOOT_SPL       ?= $(U-BOOT_PATH)/u-boot-raptor
UBOOT_IMG       ?= $(U-BOOT_PATH)/u-boot_raptor.img
UBOOT_ENV       ?= $(BUILD_PATH)/artik/uEnv.txt
LINUX_IMAGE     ?= $(LINUX_PATH)/arch/arm/boot/zImage
LINUX_DTBS      ?= $(wildcard $(LINUX_PATH)/arch/arm/boot/dts/artik530*.dtb)
FIT_SOURCE      ?= $(BUILD_PATH)/artik/fitImage-artik530S.its
FIT_MAKEFILE    ?= $(BUILD_PATH)/artik/Makefile
OPTEE_PLATFORM  ?= artik
U-BOOT_CONFIG   ?= artik530_raptor_defconfig
CONFIG_TYPE     ?= artik530_raptor
BUSYBOX_TARGET  ?= artik530

###############################################################################
# Include common to ARTIK builds
###############################################################################
include artik/artik-common.mk
