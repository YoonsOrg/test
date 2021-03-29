#!/bin/bash

echo "envname=prod" >> $GITHUB_ENV

if [ "$1" -eq "release"]; then
  echo "tagname=$2" >> $GITHUB_ENV
else
  echo "tagname=$3" >> $GITHUB_ENV
fi
