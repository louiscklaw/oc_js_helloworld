#!/usr/bin/env bash

set -ex

git config --global user.email "jenkins@louislabs.com"
git config --global user.name "_js_helloworld"
git config --global --add safe.directory "*"

# npm i -g pnpm
# export SHELL=bash
# pnpm setup
# pnpm config set global-bin-dir "$NVM_BIN"

# pnpm i -g opencode-ai
# pnpm approve-builds -g


echo "setup done"
