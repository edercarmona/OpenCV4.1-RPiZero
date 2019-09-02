#!/bin/bash
echo "Actualizando Raspberry Pi Zero"
sudo apt -y update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo rpi-update
echo "Instalando Librerias"
sudo apt install libgtk-3-dev libcanberra-gtk3-dev
sudo apt install libtiff-dev zlib1g-dev
sudo apt install libjpeg-dev libpng-dev
sudo apt install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt install python3-numpy
sudo apt install python-numpy
echo "Extrayendo opencv-4.1.0-pizero.tar.bz2"
tar xfv opencv-4.1.0-pizero.tar.bz2
sudo mv opencv-4.1.0 /opt
echo "Configurando Variables de Entorno"
echo 'export LD_LIBRARY_PATH=/opt/opencv-4.1.0/lib:$LD_LIBRARY_PATH' >> .bashrc
source .bashrc
echo "cerando enlace simbolico"
sudo ln -s /opt/opencv-4.1.0/lib/python2.7/dist-packages/cv2 /usr/lib/python2.7/dist-packages/cv2
sudo ln -s /opt/opencv-4.1.0/lib/python3.7/dist-packages/cv2 /usr/lib/python3/dist-packages/cv2
