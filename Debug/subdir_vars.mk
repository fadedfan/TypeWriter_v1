################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
../cc13x1_cc26x1_nortos.cmd 

SYSCFG_SRCS += \
../imu_spi.syscfg 

C_SRCS += \
../imu_spi.c \
./syscfg/ti_devices_config.c \
./syscfg/ti_drivers_config.c \
../main_nortos.c 

GEN_FILES += \
./syscfg/ti_devices_config.c \
./syscfg/ti_drivers_config.c \
./syscfg/ti_utils_build_compiler.opt 

GEN_MISC_DIRS += \
./syscfg 

C_DEPS += \
./imu_spi.d \
./syscfg/ti_devices_config.d \
./syscfg/ti_drivers_config.d \
./main_nortos.d 

GEN_OPTS += \
./syscfg/ti_utils_build_compiler.opt 

OBJS += \
./imu_spi.o \
./syscfg/ti_devices_config.o \
./syscfg/ti_drivers_config.o \
./main_nortos.o 

GEN_MISC_FILES += \
./syscfg/ti_drivers_config.h \
./syscfg/ti_utils_build_linker.cmd.genlibs \
./syscfg/syscfg_c.rov.xs 

GEN_MISC_DIRS__QUOTED += \
"syscfg" 

OBJS__QUOTED += \
"imu_spi.o" \
"syscfg/ti_devices_config.o" \
"syscfg/ti_drivers_config.o" \
"main_nortos.o" 

GEN_MISC_FILES__QUOTED += \
"syscfg/ti_drivers_config.h" \
"syscfg/ti_utils_build_linker.cmd.genlibs" \
"syscfg/syscfg_c.rov.xs" 

C_DEPS__QUOTED += \
"imu_spi.d" \
"syscfg/ti_devices_config.d" \
"syscfg/ti_drivers_config.d" \
"main_nortos.d" 

GEN_FILES__QUOTED += \
"syscfg/ti_devices_config.c" \
"syscfg/ti_drivers_config.c" \
"syscfg/ti_utils_build_compiler.opt" 

C_SRCS__QUOTED += \
"../imu_spi.c" \
"./syscfg/ti_devices_config.c" \
"./syscfg/ti_drivers_config.c" \
"../main_nortos.c" 

SYSCFG_SRCS__QUOTED += \
"../imu_spi.syscfg" 


