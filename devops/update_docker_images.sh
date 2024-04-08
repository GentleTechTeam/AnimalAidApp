#!/bin/sh
cd "$(dirname "$0")" || exit;
source helpers/cdroot.sh;
cdroot;

BASE_IMAGE_VERSION="8";
LINUX_IMAGE_VERSION="10";
ANDROID_IMAGE_VERSION="12";
BASE_REGISTRY_URL="registry.gentletech.com/animal-aid-app/flutter-docker-images"
REPO_FOLDER="flutter-docker-images-repo"
# Flutter version is taken from FVM config
PROJECT_FLUTTER_VERSION=$(cat .fvm/fvm_config.json | grep "flutterSdkVersion" | cut -d ":" -f 2 | tr -d ',' | tr -d '"' | tr -d ' ')

# Clone the repo
git clone git@github.com:gentletech/flutter-docker-images.git $REPO_FOLDER

# Prepare ENV
ENV=$(cat <<-END
FLUTTER_VERSION=$PROJECT_FLUTTER_VERSION
BASE_ANDROID_SDK_IMAGE=cirrusci/android-sdk:30
BASE_IMAGE=$BASE_REGISTRY_URL:base-$BASE_IMAGE_VERSION
LINUX_IMAGE=$BASE_REGISTRY_URL:linux-$LINUX_IMAGE_VERSION
ANDROID_IMAGE=$BASE_REGISTRY_URL:android-$ANDROID_IMAGE_VERSION
END
)
echo "$ENV" > $REPO_FOLDER/.env

# Build images
cd $REPO_FOLDER
bash build_all.sh

# Clean up
cdroot;
rm -rf $REPO_FOLDER
