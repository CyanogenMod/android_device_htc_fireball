#!/bin/sh

set -e

export DEVICE=fireball
export VENDOR=htc
./../../../device/${VENDOR}/s4-common/setup-makefiles.sh $@
