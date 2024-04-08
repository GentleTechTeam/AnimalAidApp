#!/usr/bin/env bash
# Usage: run_fastlane_release_android BUILD_ENV (f.e. qa)
BUILD_ENV=$1

cd "$(dirname "$0")" || exit;
source helpers/cdroot.sh;
cdroot;

RELEASE_SCRIPT="devops/scripts/run_fastlane_release_ios_script.sh";
bash devops/helpers/run_in_macos_sandbox.sh bash $RELEASE_SCRIPT $BUILD_ENV;
