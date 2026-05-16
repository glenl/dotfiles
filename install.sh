#! /usr/bin/env bash

set -euo pipefail

flags="\
 --ignore='.*\.elc' \
 --ignore='.*\.org' \
 --ignore='.*\.md' \
 --ignore=Makefile"

# options
while getopts v opts
do
    case $opts in
        v) flags="$flags --verbose";;
    esac
done

stow ${@:-emacs} $flags --target=$HOME
