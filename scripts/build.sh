#!/bin/bash
echo "iniciando servicio de usuario"
sleep 1
echo "instalacion de python"
sleep 1 
if command -v python3 &> /dev/null ; then
    echo "python instalado"
else
    sudo apt update &&  sudo apt -y install python3
    if [[ $? -ne 0 ]]; then
        echo "error al instalar python"
        exit 1
    fi

fi

if ! command -v pip3 &> /dev/null ; then
    echo "pip3 no está instalado. Instalando..."
    sudo apt update && sudo apt -y install python3-pip
fi

if command -v pytest &> /dev/null ; then
    echo "pytest instalado"
else
    pip install pytest
    if [[ $? -ne 0 ]]; then
        echo "error al instalar pytest"
        exit 1
    fi

fi
echo "build completado exitosamente"
