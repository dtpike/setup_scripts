#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Version string required"
    exit 1
fi

VERSION=$1
if [ ! -f /etc/apt/sources.list.d/ros-latest.list ]; then
    sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
    apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
fi

apt-get update
apt-get install -y ros-$VERSION-ros-base

