# nRF application makefile
PROJECT_NAME = $(shell basename "$(realpath ./)")

# Configurations
NRF_IC = nrf52832
SDK_VERSION = 15
SOFTDEVICE_MODEL = s132

# Source and header files
APP_HEADER_PATHS += . ./include/
APP_SOURCE_PATHS += . ./portable/GCC/nrf52

#APP_SOURCES = $(notdir $(wildcard ./*.c))
APP_SOURCES = main.c tasks.c list.c timers.c queue.c port.c port_cmsis.c port_cmsis_systick.c heap_2.c 

# Path to base of nRF52-base repo
NRF_BASE_DIR = ../buckler/software/nrf52x-base/

# Include board Makefile (if any)
include ../buckler/software/boards/buckler_revC/Board.mk

# Include main Makefile
include $(NRF_BASE_DIR)make/AppMakefile.mk
