#!/bin/bash
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e -u -o

export DEVICE=cepheus
export DEVICE_COMMON=sdm855-common
export VENDOR=xiaomi

export DEVICE_BRINGUP_YEAR=2019

./../../$VENDOR/$DEVICE_COMMON/extract-files.sh $@
