#!/bin/sh

set -eu

cake $CAKE_SCRIPT --target=$*

exit $?
