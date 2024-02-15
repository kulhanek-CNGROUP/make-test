all: \
  test\ THUMB\ Debug/test.elf\

-include test THUMB Debug/main.d
test\ THUMB\ Debug/main.o:src/main.c
	"C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/gcc/arm-none-eabi/bin/cc1" -fmessage-length=0 -fdiagnostics-color=never -fdiagnostics-show-caret -std=gnu99 -mcpu=cortex-m0plus -mlittle-endian -mfloat-abi=soft -mthumb -mno-unaligned-access -mtp=soft -mfp16-format=ieee -nostdinc -isystem "C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/include" "-IC:/Users/jaku/AppData/Local/Rowley Associates Limited/CrossWorks for ARM/v4/packages/targets/STM32/include" "-IC:/Users/jaku/Documents/CrossWorks Projects/test/lib" "-IC:/Users/jaku/AppData/Local/Rowley Associates Limited/CrossWorks for ARM/v4/packages/CMSIS_5/CMSIS/Core/Include" -D__SIZEOF_WCHAR_T=4 -D__ARM_ARCH_6M__ -D__CROSSWORKS_ARM -D__HEAP_SIZE__=128 -D__GNU_LINKER -D__CROSSWORKS_MAJOR_VERSION=4 -D__CROSSWORKS_MINOR_VERSION=10 -D__CROSSWORKS_REVISION=8 -DSTM32G071xx -D__VECTORS=\"STM32G071xx.vec\" -D__SYSTEM_STM32G0XX -D__TARGET_PROCESSOR_STM32G071CB -DDEBUG -D__THUMB -MD "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/main.d" -MQ "test THUMB Debug/main.o" -quiet -Wunused-variable -Wuninitialized -gdwarf-4 -g3 -gpubnames -fomit-frame-pointer -ffunction-sections -fdata-sections -fshort-enums -fno-common "C:\Users\jaku\Documents\CrossWorks Projects\test\src\main.c" -o "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/main.asm"
	"C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/gcc/arm-none-eabi/bin/as" --traditional-format "-IC:/Users/jaku/AppData/Local/Rowley Associates Limited/CrossWorks for ARM/v4/packages/targets/STM32/include" "-IC:/Users/jaku/Documents/CrossWorks Projects/test/lib" -march=armv6-m -mlittle-endian -mfloat-abi=soft -mthumb "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/main.asm" -o "test THUMB Debug/main.o"
	"C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/bin/rm" -f "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/main.asm"

-include test THUMB Debug/thumb_crt0.d
test\ THUMB\ Debug/thumb_crt0.o:C:/Program\ Files/Rowley\ Associates\ Limited/CrossWorks\ for\ ARM\ 4.10/source/thumb_crt0.s
	"C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/gcc/arm-none-eabi/bin/cc1" -fmessage-length=0 -lang-asm -fdiagnostics-color=never -fdiagnostics-show-caret -E -march=armv6-m -mlittle-endian -mfloat-abi=soft -mthumb -mno-unaligned-access -nostdinc -isystem "C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/include" "-IC:/Users/jaku/AppData/Local/Rowley Associates Limited/CrossWorks for ARM/v4/packages/targets/STM32/include" "-IC:/Users/jaku/Documents/CrossWorks Projects/test/lib" "-IC:/Users/jaku/AppData/Local/Rowley Associates Limited/CrossWorks for ARM/v4/packages/CMSIS_5/CMSIS/Core/Include" -D__SIZEOF_WCHAR_T=4 -D__ARM_ARCH_6M__ -D__CROSSWORKS_ARM -D__HEAP_SIZE__=128 -D__GNU_LINKER -D__CROSSWORKS_MAJOR_VERSION=4 -D__CROSSWORKS_MINOR_VERSION=10 -D__CROSSWORKS_REVISION=8 -DSTM32G071xx -D__VECTORS=\"STM32G071xx.vec\" -D__SYSTEM_STM32G0XX -D__TARGET_PROCESSOR_STM32G071CB -DDEBUG -D__THUMB -MD "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/thumb_crt0.d" -MQ "test THUMB Debug/thumb_crt0.o" -quiet "C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/source/thumb_crt0.s" -o "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/thumb_crt0_PP.s"
	"C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/gcc/arm-none-eabi/bin/as" --traditional-format "-IC:/Users/jaku/AppData/Local/Rowley Associates Limited/CrossWorks for ARM/v4/packages/targets/STM32/include" "-IC:/Users/jaku/Documents/CrossWorks Projects/test/lib" -march=armv6-m -mlittle-endian -mfloat-abi=soft -mthumb "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/thumb_crt0_PP.s" -o "test THUMB Debug/thumb_crt0.o" -g -gdwarf-4
	"C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/bin/rm" -f "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/thumb_crt0_PP.s"

-include test THUMB Debug/STM32_Startup.d
test\ THUMB\ Debug/STM32_Startup.o:C:/Users/jaku/AppData/Local/Rowley\ Associates\ Limited/CrossWorks\ for\ ARM/v4/packages/targets/STM32/STM32_Startup.s
	"C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/gcc/arm-none-eabi/bin/cc1" -fmessage-length=0 -lang-asm -fdiagnostics-color=never -fdiagnostics-show-caret -E -march=armv6-m -mlittle-endian -mfloat-abi=soft -mthumb -mno-unaligned-access -nostdinc -isystem "C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/include" "-IC:/Users/jaku/AppData/Local/Rowley Associates Limited/CrossWorks for ARM/v4/packages/targets/STM32/include" "-IC:/Users/jaku/Documents/CrossWorks Projects/test/lib" "-IC:/Users/jaku/AppData/Local/Rowley Associates Limited/CrossWorks for ARM/v4/packages/CMSIS_5/CMSIS/Core/Include" -D__SIZEOF_WCHAR_T=4 -D__ARM_ARCH_6M__ -D__CROSSWORKS_ARM -D__HEAP_SIZE__=128 -D__GNU_LINKER -D__CROSSWORKS_MAJOR_VERSION=4 -D__CROSSWORKS_MINOR_VERSION=10 -D__CROSSWORKS_REVISION=8 -DSTM32G071xx -D__VECTORS=\"STM32G071xx.vec\" -D__SYSTEM_STM32G0XX -D__TARGET_PROCESSOR_STM32G071CB -DDEBUG -D__THUMB -MD "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/STM32_Startup.d" -MQ "test THUMB Debug/STM32_Startup.o" -quiet "C:/Users/jaku/AppData/Local/Rowley Associates Limited/CrossWorks for ARM/v4/packages/targets/STM32/STM32_Startup.s" -o "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/STM32_Startup_PP.s"
	"C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/gcc/arm-none-eabi/bin/as" --traditional-format "-IC:/Users/jaku/AppData/Local/Rowley Associates Limited/CrossWorks for ARM/v4/packages/targets/STM32/include" "-IC:/Users/jaku/Documents/CrossWorks Projects/test/lib" -march=armv6-m -mlittle-endian -mfloat-abi=soft -mthumb "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/STM32_Startup_PP.s" -o "test THUMB Debug/STM32_Startup.o" -g -gdwarf-4
	"C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/bin/rm" -f "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/STM32_Startup_PP.s"

test\ THUMB\ Debug/test.elf:\
  test\ THUMB\ Debug/main.o\
  test\ THUMB\ Debug/thumb_crt0.o\
  test\ THUMB\ Debug/STM32_Startup.o\
  C:/Program\ Files/Rowley\ Associates\ Limited/CrossWorks\ for\ ARM\ 4.10/targets/Cortex_M/flash_placement.xml\
  ../../../AppData/Local/Rowley\ Associates\ Limited/CrossWorks\ for\ ARM/v4/packages/targets/STM32/STM32G071CB_MemoryMap.xml
	"C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/bin/mkld" -target arm -memory-map-file "C:/Users/jaku/AppData/Local/Rowley Associates Limited/CrossWorks for ARM/v4/packages/targets/STM32/STM32G071CB_MemoryMap.xml" -section-placement-file "C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/targets/Cortex_M/flash_placement.xml" -check-segment-overflow -check-section-overflow -symbols "__STACKSIZE__=256;__STACKSIZE_PROCESS__=0;__STACKSIZE_IRQ__=0;__STACKSIZE_FIQ__=0;__STACKSIZE_SVC__=0;__STACKSIZE_ABT__=0;__STACKSIZE_UND__=0;__HEAPSIZE__=128;__do_debug_operation=__do_debug_operation_mempoll;__vfprintf=__vfprintf_float_long_long;__vfscanf=__vfscanf_float_long_long_cc" "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/test.ld"
	"C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/gcc/arm-none-eabi/bin/ld" -X --omagic -ereset_handler -EL --gc-sections "-TC:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/test.ld" -Map "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/test.map" -u_vectors -o "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/test.elf" --emit-relocs --start-group "@C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/test_files.ind" --end-group
	"C:/Program Files/Rowley Associates Limited/CrossWorks for ARM 4.10/gcc/arm-none-eabi/bin/objcopy" "test THUMB Debug/test.elf" "C:/Users/jaku/Documents/CrossWorks Projects/test/test THUMB Debug/test.srec" -Osrec