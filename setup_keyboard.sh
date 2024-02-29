#!/bin/bash

set -e
cp $(dirname $0)/keyboard /etc/default/keyboard
dpkg-reconfigure keyboard-configuration
