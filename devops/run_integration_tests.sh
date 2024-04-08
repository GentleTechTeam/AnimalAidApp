#!/usr/bin/env bash
cd "$(dirname "$0")" || exit;
source helpers/cdroot.sh;
cdroot;

fvm flutter test integration_test/common_functionality_test.dart
