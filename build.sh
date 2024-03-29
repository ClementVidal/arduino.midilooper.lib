#!/bin/bash

BUILD_DIR="$(pwd)/build"

if [ -d "$BUILD_DIR" ]; then
    rm -rf "$BUILD_DIR"
fi

mkdir "$BUILD_DIR"
mkdir "$BUILD_DIR/ArduinoCoreLib"
mkdir "$BUILD_DIR/ArduinoMIDILib"
mkdir "$BUILD_DIR/ArduinoSPILib"
mkdir "$BUILD_DIR/ArduinoSPIRAMLib"
mkdir "$BUILD_DIR/ArduinoLCDLib"
mkdir "$BUILD_DIR/ArduinoEEPROMLib"

cd "$BUILD_DIR/ArduinoCoreLib"
cmake -DCMAKE_INSTALL_PREFIX=${ARDUINO_INSTALL} ../../ArduinoCoreLib && make all install
cd "$BUILD_DIR/ArduinoMIDILib"
cmake -DCMAKE_INSTALL_PREFIX=${ARDUINO_INSTALL} ../../ArduinoMIDILib && make all install
cd "$BUILD_DIR/ArduinoSPILib"
cmake -DCMAKE_INSTALL_PREFIX=${ARDUINO_INSTALL} ../../ArduinoSPILib && make all install
cd "$BUILD_DIR/ArduinoSPIRAMLib"
cmake -DCMAKE_INSTALL_PREFIX=${ARDUINO_INSTALL} ../../ArduinoSPIRAMLib && make all install
cd "$BUILD_DIR/ArduinoLCDLib"
cmake -DCMAKE_INSTALL_PREFIX=${ARDUINO_INSTALL} ../../ArduinoLCDLib && make all install
cd "$BUILD_DIR/ArduinoEEPROMLib"
cmake -DCMAKE_INSTALL_PREFIX=${ARDUINO_INSTALL} ../../ArduinoEEPROMLib && make all install