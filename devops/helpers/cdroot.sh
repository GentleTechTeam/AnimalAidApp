#!/usr/bin/env bash

function cdroot()
{
  PUBSPECFILEFOUND=$(isPubSpecFileFound);

  while [[ $PUBSPECFILEFOUND = 0 ]];
  do cd ..;
  PUBSPECFILEFOUND=$(isPubSpecFileFound);

  done
}

function isPubSpecFileFound()
{
  PUBSPECFILEFOUND=0;
  PUBSPECFILESPATH=$(find . -name pubspec.yaml);
  if [ "$PUBSPECFILESPATH" != "" ]; then PUBSPECFILEFOUND=1;
  fi
  echo $PUBSPECFILEFOUND;
}
