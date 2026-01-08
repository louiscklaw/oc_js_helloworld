#!/usr/bin/env bash

set -ex

pushd code_under_work
  cat ./.tmp/task.md

  echo "agent last run log" > ./.tmp/agent_run_log.log
  echo "" > ./.tmp/agent_run_log.log
  echo "" > ./.tmp/agent_run_log.log

  timeout 3600 \
  opencode run \
    -m "happy_llm/happy-think-low" \
    --message "$(cat ../prompts/prompt_002.md)" \
    | tee -a ./.tmp/agent_run_log.log

  cp ./.tmp/agent_run_log.log ./.tmp/agent_last_run_log.log

  # echo '1'

popd