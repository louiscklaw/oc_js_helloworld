#!/usr/bin/env bash
# runner 3

# for openrouter disable color output
export NO_COLOR=1

# for python output in jenkins web interface
export PYTHONUNBUFFERED=1

set -ex

# ./scripts/setup.sh

OC_HOME=$PWD
CODE_UNDER_WORK=./code_under_work
SRC_BRANCH=develop/trunk
KEY_PATH=$OC_HOME/keys/id_rsa
PROMPTS_HOME=$OC_HOME/prompts
TASK_DONE=$OC_HOME/tasks/_done

chmod +x $OC_HOME/*.sh
chmod +x $CODE_UNDER_WORK/scripts/*.sh

pushd $CODE_UNDER_WORK
  GIT_SSH_COMMAND="ssh -o \"StrictHostKeyChecking=no\" -i $KEY_PATH -F /dev/null" \
    git fetch --all

  GIT_SSH_COMMAND="ssh -o \"StrictHostKeyChecking=no\" -i $KEY_PATH -F /dev/null" \
    git fetch --prune

  git reset --hard
  git checkout $SRC_BRANCH
  git clean -fdx

  GIT_SSH_COMMAND="ssh -o \"StrictHostKeyChecking=no\" -i $KEY_PATH -F /dev/null" \
    git pull

popd

# validate environment
mkdir -p $CODE_UNDER_WORK/scripts

if [[ ! -f "$CODE_UNDER_WORK/scripts/ai_reset_env.sh" ]]; then
    echo "Error: $CODE_UNDER_WORK/scripts/ai_reset_env.sh not found"

    touch $CODE_UNDER_WORK/scripts/ai_reset_env.sh
    echo '#!/usr/bin/env bash' > $CODE_UNDER_WORK/scripts/ai_reset_env.sh
    echo 'echo \"reset passed\"' >> $CODE_UNDER_WORK/scripts/ai_reset_env.sh
    chmod +x $CODE_UNDER_WORK/scripts/ai_reset_env.sh

    git add $CODE_UNDER_WORK/scripts/ai_reset_env.sh
    git commit -m'filling ai_reset_env.sh,'

fi

if [[ ! -f "$CODE_UNDER_WORK/scripts/ai_selfcheck.sh" ]]; then
    echo "Error: $CODE_UNDER_WORK/scripts/ai_selfcheck.sh not found"

    touch $CODE_UNDER_WORK/scripts/ai_selfcheck.sh
    echo '#!/usr/bin/env bash' > $CODE_UNDER_WORK/scripts/ai_selfcheck.sh
    echo 'echo \"selfcheck passed\"' >> $CODE_UNDER_WORK/scripts/ai_selfcheck.sh
    chmod +x $CODE_UNDER_WORK/scripts/ai_selfcheck.sh

    git add $CODE_UNDER_WORK/scripts/ai_selfcheck.sh
    git commit -m'filling ai_selfcheck.sh,'

fi

# ignore lib, parking directory.
for task_file in $OC_HOME/tasks/_queue/*.md; do
  # Skip directories and only process files
  if [[ -f "$task_file" ]]; then
    echo "Processing task file: $task_file"

    TASK_NAME=$(basename "$task_file" .md)

    pushd $CODE_UNDER_WORK
      GIT_SSH_COMMAND="ssh -o \"StrictHostKeyChecking=no\" -i $KEY_PATH -F /dev/null" \
        git fetch --all

      GIT_SSH_COMMAND="ssh -o \"StrictHostKeyChecking=no\" -i $KEY_PATH -F /dev/null" \
        git fetch --prune

      git checkout $SRC_BRANCH

      GIT_SSH_COMMAND="ssh -o \"StrictHostKeyChecking=no\" -i $KEY_PATH -F /dev/null" \
        git pull

      git reset --hard
      git clean -fdx

      # Delete the branch if it exists, then create a new one
      # git checkout develop/trunk
      WORK_BRANCH=develop/$TASK_NAME/trunk
      git branch -D $WORK_BRANCH 2>/dev/null || true
      git checkout -b $WORK_BRANCH

      # do not let pnpm update package on build environment. it is a trouble
      # pnpm i --frozen-lockfile
      ./scripts/ai_reset_env.sh

      # pnpm ai_selfcheck
      mkdir ./.tmp
      set -ex
      cp "$task_file" ./.tmp/task.md
      echo "--" > ./.tmp/ai_commit_message.md
    popd

    python3 ./task_runner.py $TASK_NAME


    # NOTE: consider modification(s) done.
    pushd $CODE_UNDER_WORK

      git add .
      git commit -m "$(cat ./.tmp/ai_commit_message.md)"

      GIT_SSH_COMMAND="ssh -o \"StrictHostKeyChecking=no\" -i $KEY_PATH -F /dev/null" \
        git push --set-upstream origin develop/$TASK_NAME/trunk -f
    popd

    # archiving
    mkdir -p $OC_HOME/.AI_task_log/$TASK_NAME
    cp -r $CODE_UNDER_WORK/.tmp/ $OC_HOME/.AI_task_log/$TASK_NAME

    # consider done here
    #
    mv "$task_file" $TASK_DONE

  fi

  # set build name after work
  echo $TASK_NAME > $OC_HOME/version.txt

  echo "single task done"
  exit 0

done

echo "done"

exit 0

# TODO:
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
