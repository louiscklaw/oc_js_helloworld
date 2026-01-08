#!/usr/bin/env bash

set -ex

# ssh://git@192.168.10.61:2222/admin/dashboard_app.git

cd code_under_work
  # git add .
  # git commit -m'update,'

  # GIT_SSH_COMMAND="ssh -i ../keys/id_rsa -F /dev/null" git push --set-upstream origin develop/trunk
  GIT_SSH_COMMAND="ssh -i ../keys/id_rsa -F /dev/null" git push
  # GIT_SSH_COMMAND="ssh -i ./keys/id_rsa -F /dev/null" git push --set-upstream origin develop/trunk
cd -

echo "done"
