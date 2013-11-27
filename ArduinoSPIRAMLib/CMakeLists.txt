set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_C_COMPILER avr-gcc)
set(CMAKE_CXX_COMPILER avr-g++)

cmake_minimum_required(VERSION 2.6)
project(AruduinoSPIRAM)

set(COPT "-c -Os")
set(CWARN "-Wall")
set(CSECTION "-ffunction-sections -fdata-sections")
set(CMCU "-mmcu=atmega328p")
set(CDEFS "-DF_CPU=16000000L -MMD -DUSB_VID=null -DUSB_PID=null -DARDUINO=105")
set(CXXTUNING "-fno-exceptions")

set(CFLAGS "${COPT} ${CWARN} ${CSECTIONS} ${CMCU} ${CDEFS}")
set(CXXFLAGS "${COPT} ${CXXTUNING} ${CWARN} ${CSECTIONS} ${CMCU} ${CDEFS}")

set(CMAKE_C_FLAGS ${CFLAGS})
set(CMAKE_CXX_FLAGS ${CXXFLAGS})

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories($ENV{ARDUINO_INCLUDE})

add_library( ArduinoSPIRAM SpiRAM.cpp )

install(TARGETS ArduinoSPIRAM ARCHIVE DESTINATION lib/static)
install(FILES SpiRAM.h DESTINATION include/Arduino)