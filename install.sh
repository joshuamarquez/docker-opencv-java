#!/bin/bash

tools=(build-essential cmake curl default-jdk libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev ant)

apt-get update && apt-get install -y ${tools[@]}

curl -sL https://github.com/Itseez/opencv/archive/3.0.0.tar.gz | tar xvz -C /tmp

cd /tmp/opencv-3.0.0 && mkdir build && cd build

export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64

export ANT_HOME=/usr/bin/ant

cmake -D BUILD_SHARED_LIBS=OFF ..
make -j8

mkdir /opencv-java-bin
cp bin/opencv-300.jar lib/libopencv_java300.so /opencv-java-bin

apt-get remove --purge -y ${tools[@]} && apt-get autoclean && apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

mkdir /gen
