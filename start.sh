#!/bin/bash
installed_version="3.2.0"

cd /c2data

# get the kernel name
kernel=`uname -s`
if [ $kernel = "Linux" ]
  then kernel="linux"
fi

if [ $kernel = "Darwin" ]
  then kernel="darwin"
fi

# get the hardware
hardware=`uname -p`
if [ $hardware = "x86_64" ]
  then hardware="amd64"
fi

# get the machine
hardware=`uname -m`
if [ $hardware = "armv7l" ]
  then hardware="armv7"
fi

./c2-${installed_version}_${hardware}_${kernel} -db /c2config/c2.db -listenport 80 -hostname c2.localhost
