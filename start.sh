#!/bin/bash
installed_version="3.2.0"

cd /c2data

# read in HTTPS from env
if [ ${HTTPS} = "true" ]
then
  HTTPS="-https"
else
  HTTPS=""
fi

# read in C2HOSTNAME from config
if [ -f /c2config/C2HOSTNAME ]
then
  C2HOSTNAME=`cat /c2config/C2HOSTNAME`
else
  C2HOSTNAME="c2.localhost"
fi

if [ -f /c2config/C2PORT ]
then
  C2PORT=`cat /c2config/C2PORT`
else
  if [ ${HTTPS} = "true" ]
  then
    C2PORT="443"
  else
    C2PORT="80"
  fi
fi

# get the kernel name
kernel="`uname -s`"
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

./c2-${installed_version}_${hardware}_${kernel} -db /c2config/c2.db -listenport ${C2PORT} -hostname ${C2HOSTNAME} ${HTTPS}
