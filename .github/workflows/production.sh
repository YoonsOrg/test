#!/bin/bash
echo "envname=prod" >> $GITHUB_ENV

if [ $1 = "release"]; then
  echo "tagname=${ branchName }" >> $GITHUB_ENV
else
  echo "tagname=${{ github.sha }}" >> $GITHUB_ENV
fi
