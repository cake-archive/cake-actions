#!/bin/sh

set -eu

cake --info

cake $CAKE_SCRIPT --target=$*

exit $?
