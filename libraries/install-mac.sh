#!/bin/bash

git submodule update --init

cp -R ./MAX6675-library ~/Documents/Arduino/libraries/max6675
cp -R ./PID_v1 ~/Documents/Arduino/libraries/
cp -R ./PDQ_GFX_Libs/PDQ_* ~/Documents/Arduino/libraries/
cp -R ./Menu ~/Documents/Arduino/libraries/
cp -R ./encoder ~/Documents/Arduino/libraries/ClickEncoder
