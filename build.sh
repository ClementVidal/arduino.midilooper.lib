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

cd "$BUILD_DIR/ArduinoCoreLib"
cmake -DCMAKE_INSTALL_PREFIX=~/Dev/ArduinoLib/install/ ../../ArduinoCoreLib && make all install
cd "$BUILD_DIR/ArduinoMIDILib"
cmake -DCMAKE_INSTALL_PREFIX=~/Dev/ArduinoLib/install/ ../../ArduinoMIDILib && make all install
cd "$BUILD_DIR/ArduinoSPILib"
cmake -DCMAKE_INSTALL_PREFIX=~/Dev/ArduinoLib/install/ ../../ArduinoSPILib && make all install
cd "$BUILD_DIR/ArduinoSPIRAMLib"
cmake -DCMAKE_INSTALL_PREFIX=~/Dev/ArduinoLib/install/ ../../ArduinoSPIRAMLib && make all install
