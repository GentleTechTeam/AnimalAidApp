#!/usr/bin/env bash
# Usage: run_fastlane_release_android BUILD_ENV (f.e. qa)
BUILD_ENV=$1
cd "$(dirname "$0")" || exit;
source helpers/cdroot.sh;
cdroot;

fvm flutter clean;
fvm flutter pub get;
fvm flutter build appbundle --dart-define=BUILD_ENV=$BUILD_ENV --bundle-sksl-path devops/flutter_shaders_warm_up_data.sksl.json

cd android || exit;
bundle install;
bundle exec fastlane release;
