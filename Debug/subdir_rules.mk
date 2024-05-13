################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs1260/ccs/tools/compiler/ti-cgt-armllvm_3.2.1.LTS/bin/tiarmclang" -c -mcpu=cortex-m4 -mfloat-abi=soft -mfpu=none -mlittle-endian -mthumb -Oz -I"/Users/samliu/Desktop/TypeWriter/TypeWriter_test_nrtos" -I"/Users/samliu/Desktop/TypeWriter/TypeWriter_test_nrtos/Debug" -I"/Applications/ti/simplelink_cc13xx_cc26xx_sdk_7_40_00_77/source" -I"/Applications/ti/simplelink_cc13xx_cc26xx_sdk_7_40_00_77/kernel/nortos" -I"/Applications/ti/simplelink_cc13xx_cc26xx_sdk_7_40_00_77/kernel/nortos/posix" -gdwarf-3 -march=armv7e-m -MMD -MP -MF"$(basename $(<F)).d_raw" -MT"$(@)" -I"/Users/samliu/Desktop/TypeWriter/TypeWriter_test_nrtos/Debug/syscfg"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-649382703: ../imu_spi.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"/Applications/ti/sysconfig_1.18.1/sysconfig_cli.sh" --script "/Users/samliu/Desktop/TypeWriter/TypeWriter_test_nrtos/imu_spi.syscfg" -o "syscfg" -s "/Applications/ti/simplelink_cc13xx_cc26xx_sdk_7_40_00_77/.metadata/product.json" --compiler ticlang
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/ti_devices_config.c: build-649382703 ../imu_spi.syscfg
syscfg/ti_drivers_config.c: build-649382703
syscfg/ti_drivers_config.h: build-649382703
syscfg/ti_utils_build_linker.cmd.genlibs: build-649382703
syscfg/ti_utils_build_compiler.opt: build-649382703
syscfg/syscfg_c.rov.xs: build-649382703
syscfg: build-649382703

syscfg/%.o: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/Applications/ti/ccs1260/ccs/tools/compiler/ti-cgt-armllvm_3.2.1.LTS/bin/tiarmclang" -c -mcpu=cortex-m4 -mfloat-abi=soft -mfpu=none -mlittle-endian -mthumb -Oz -I"/Users/samliu/Desktop/TypeWriter/TypeWriter_test_nrtos" -I"/Users/samliu/Desktop/TypeWriter/TypeWriter_test_nrtos/Debug" -I"/Applications/ti/simplelink_cc13xx_cc26xx_sdk_7_40_00_77/source" -I"/Applications/ti/simplelink_cc13xx_cc26xx_sdk_7_40_00_77/kernel/nortos" -I"/Applications/ti/simplelink_cc13xx_cc26xx_sdk_7_40_00_77/kernel/nortos/posix" -gdwarf-3 -march=armv7e-m -MMD -MP -MF"syscfg/$(basename $(<F)).d_raw" -MT"$(@)" -I"/Users/samliu/Desktop/TypeWriter/TypeWriter_test_nrtos/Debug/syscfg"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


