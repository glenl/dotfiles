#! /usr/bin/env bash

stow emacs \
    --verbose \
    --ignore='.*\.elc' \
    --ignore='.*\.org' \
    --ignore='.*\.md' \
    --ignore='Makefile' \
    --target=$HOME \
