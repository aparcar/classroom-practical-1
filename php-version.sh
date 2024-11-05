#!/bin/bash

# This script should print the PHP version of the website https://www.hs-nordhausen.de/
# Sadly, bot the `grep` and `cut` commands are not working as expected.
# Please fix the script, so that it prints the PHP version.
# Good luck!

curl --silent --head https://www.hs-nordhausen.de/ | grep "Powered-By" | awk '{print $1}'
