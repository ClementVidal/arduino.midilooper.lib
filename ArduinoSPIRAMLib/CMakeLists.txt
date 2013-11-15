set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_C_COMPILER avr-gcc)
set(CMAKE_CXX_COMPILER avr-g++)

set(CSTANDARD "-std=gnu99")
set(CDEBUG "-gstabs")
set(CWARN "-Wall -Wstrict-prototypes")
set(CTUNING "-funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums")
set(COPT "-Os")
set(CINCS "-I${Candi_SOURCE_DIR}/libarduino")
set(CMCU "-mmcu=atmega328p")
set(CDEFS "-DF_CPU=16000000")


set(CFLAGS "${CMCU} ${CDEBUG} ${CDEFS} ${CINCS} ${COPT} ${CWARN} ${CSTANDARD} ${CEXTRA}")
set(CXXFLAGS "${CMCU} ${CDEFS} ${CINCS} ${COPT}")

set(CMAKE_C_FLAGS ${CFLAGS})
set(CMAKE_CXX_FLAGS ${CXXFLAGS})


cmake_minimum_required (VERSION 2.6)
project (AruduinoSPIRAM)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories("/home/cvidal/Dev/ArduinoLib/include/Arduino")

add_library( ArduinoSPIRAM SpiRAM.cpp )

install(TARGETS ArduinoSPIRAM ARCHIVE DESTINATION lib/static)
install(FILES SpiRAM.h DESTINATION include/Arduino)