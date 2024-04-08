#!/usr/bin/env bash
cd "$(dirname "$0")" || exit;
source helpers/cdroot.sh;
cdroot;

fvm flutter pub run build_runner build --delete-conflicting-outputs
