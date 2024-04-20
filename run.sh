#!/bin/sh
set -x

powertop --auto-tune

find /sys -name l1_aspm | awk '{ print "echo 1 | tee " $1 }' | sh