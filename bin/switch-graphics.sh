#!/bin/bash

if glxinfo | grep "OpenGL renderer string" | grep -q 'GeForce'; 
then
    sudo prime-select intel;
    echo "Intel graphics enabled, logout to complete";
else 
    sudo prime-select nvidia;
    echo "Nvidia graphics enabled, logout to complete";
fi
