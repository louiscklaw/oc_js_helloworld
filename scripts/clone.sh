#!/usr/bin/env bash

set -ex

# ssh://git@192.168.10.61:2222/admin/dashboard_app.git

GIT_SSH_COMMAND="ssh -i ./keys/id_rsa -F /dev/null" \
  git clone "ssh://git@192.168.10.61:2222/admin/os_js_helloworld.git" code_under_work

echo "done"
