#!/usr/bin/env bash
cd "$(dirname "$0")" || exit;
source helpers/cdroot.sh;
cdroot;

fvm flutter drive --profile \
  --cache-sksl \
  --purge-persistent-cache \
  --write-sksl-on-exit devops/flutter_shaders_warm_up_data.sksl.json \
  --driver=test_driver/integration_test.dart \
  --target=integration_test/shaders_warm_up_test.dart \
  -d "$1"
