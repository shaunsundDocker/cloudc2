#!/bin/sh

# vars
runDir="/c2config"

# makesure c2config exists
if ! [ -d $runDir ]
then
  mkdir -p $runDir
fi
