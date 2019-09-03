#!/bin/bash
set -e -u -o pipefail
cp -r /.cargo $GITHUB_WORKSPACE/
chmod -R 0777 $GITHUB_WORKSPACE/.cargo
cd $GITHUB_WORKSPACE
bash -c "$*"
