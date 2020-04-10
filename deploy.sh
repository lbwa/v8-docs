#!/bin/bash

set -e

rm -rf docs/*

./doxygen/doxygen.exe

npx gh-pages -d docs --message "chore: deploy docs" --no-history