#!/usr/bin/env bash
cd "$(dirname "$0")" || exit;
source helpers/cdroot.sh;
cdroot;

BUILD_ENV=$1

fvm flutter clean;
fvm flutter pub get;
fvm flutter build apk --dart-define=BUILD_ENV=$BUILD_ENV --bundle-sksl-path devops/flutter_shaders_warm_up_data.sksl.json
