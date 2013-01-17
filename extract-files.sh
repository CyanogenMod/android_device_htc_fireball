#!/bin/sh

set -e

export DEVICE=fireball
export VENDOR=htc
./../msm8960-common/extract-files.sh $@
