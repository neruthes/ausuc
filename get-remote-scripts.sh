#!/bin/bash

####################################################
# Copyright 2021 Neruthes.
# Published under GNU GPLv2 license.
####################################################

if [[ "$0" != "./get-remote-scripts.sh" ]]; then
    echo "ERROR: You should always run this script as './get-remote-scripts.sh'"
    exit 1
fi

PREFIX="$(pwd)"

mkdir -p "${PREFIX}/cache"

for i in $(ls "${PREFIX}/remote-sources"); do
    SCRIPTURL="$(cat "${PREFIX}/remote-sources/${i}")"
    echo "SCRIPTURL: $SCRIPTURL"
    wget "${SCRIPTURL}" -O "${PREFIX}/cache/${i}"
    echo "---------------------------------------"
    sleep 1
done
