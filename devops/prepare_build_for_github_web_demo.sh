#!/usr/bin/env bash
cd "$(dirname "$0")" || exit;
source helpers/cdroot.sh;
cdroot;

flutter build web --base-href /AnimalAidApp/

# After build is done, copy somewhere the build/web folder
# checkout the branch with the web-demo
# move the folder, that was copied, to root folder in repo and push the changes