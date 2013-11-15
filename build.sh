#!/bin/bash

BUILD_DIR="./build"

if [ -d "$BUILD_DIR" ]; then
    rm -rf "$BUILD_DIR"
fi

mkdir "$BUILD_DIR"

cd "$BUILD_DIR"

cmake -DCMAKE_INSTALL_PREFIX=~/Dev/ArduinoLib/Install/ ../ArduinoCoreLib && make all install
cmake -DCMAKE_INSTALL_PREFIX=~/Dev/ArduinoLib/Install/ ../ArduinoMIDILib && make all install
cmake -DCMAKE_INSTALL_PREFIX=~/Dev/ArduinoLib/Install/ ../ArduinoSPILib && make all install
cmake -DCMAKE_INSTALL_PREFIX=~/Dev/ArduinoLib/Install/ ../ArduinoSPIRAMLib && make all install