#!/bin/bash
echo "envname=prod" >> $GITHUB_ENV

if [ $1 = release]; then
  echo "tagname=${ branchName }" >> $GITHUB_ENV
else
  echo "tagname=$2" >> $GITHUB_ENV
fi
