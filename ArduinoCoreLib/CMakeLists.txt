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
project (AruduinoCore)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_library(ArduinoCore HardwareSerial.cpp HID.cpp IPAddress.cpp new.cpp Print.cpp Stream.cpp Tone.cpp USBCore.cpp WInterrupts.c wiring_analog.c wiring.c wiring_digital.c wiring_pulse.c wiring_shift.c WMath.cpp WString.cpp )

install(TARGETS ArduinoCore ARCHIVE DESTINATION lib/static)
install(FILES Arduino.h HardwareSerial.h IPAddress.h new.h Platform.h Printable.h Print.h Server.h Stream.h Udp.h USBAPI.h USBCore.h USBDesc.h WCharacter.h WString.h binary.h pins_arduino.h DESTINATION include/Arduino)