################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../application/app.c 

OBJS += \
./application/app.o 

C_DEPS += \
./application/app.d 


# Each subdirectory must supply rules for building sources it contributes
application/%.o: ../application/%.c application/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G0B1xx -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I"/home/joao/Downloads/motorv2/API/Motor" -I"/home/joao/Downloads/motorv2/API/PWM" -I"/home/joao/Downloads/motorv2/application" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-application

clean-application:
	-$(RM) ./application/app.d ./application/app.o

.PHONY: clean-application

