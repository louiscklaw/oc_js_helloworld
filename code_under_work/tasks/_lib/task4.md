# AI_TODO

## purpose

imagine you are on the project root directory, and you are a backend engineer.
plesae do the check as per `tasks` described.

## background

this is a `nextjs` project under migration.
the code about `customer` and `customers` is known good and can be regards as a template.
the code `warehouse` and `employee` is the migrated code from `customer` and `customers`. You may found faulty.
please read `AGENTS.md` for more detail.
the endpoint directory for CRUD were located in `src/app/api/db/<model>`
the schema is managed by `prisma/schema.prisma`


## tasks

1. Read the current workspace
1. initialize task directory and file(s):
  1. `./.tmp` for your workspace
  1. `./.tmp/ai_commit_message.md` to keep track your commit message.
  1. initialize a `TODO` list and write it into `./.tmp/AI_TODO.md`.
    1. keep track the sub-task(s) need to be done using this file.
1. please run `pnpm run app_AI_code_selfcheck` to check the result, writ it to `./.tmp/test_before.out`
1. please help to align the endpoint(s) of `warehouse` and `employee`:
  1. they should have same interface and mechanism for CRUD.
  1. they are running `models` and `controllers` with `prisma`.
1. initialize a `jest` test to the `dashboard` page.
  1. update the `AGENTS.md` to let the decendnt AI knows how to use it
1. initialize a `jest` test to the `warehouse` page.
  1. update the `AGENTS.md` to let the decendnt AI knows how to use it


## operation

1. divide your job into sub-task(s). keep them track in `./.tmp/AI_TODO.md`
1. when you finish a sub-task, please mark it as done in `./.tmp/AI_TODO.md`
1. when you finish a sub-task run `pnpm run app_AI_code_selfcheck` for regression(s).
1. when regression(s) found. write the problem(s) in `./.tmp/AI_TODO.md` and fix it.


## after job done

1. please run `pnpm run app_AI_code_selfcheck` to check the result, pipe the output to `./.tmp/test_after.out`.
1. please compare the `./.tmp/test_before.out` and `./.tmp/test_after.out`. fix it when you find regression(s).
1. prepare commit message in `./.tmp/ai_commit_message.md`.
  1. commit your change and describe your change in commit message.
  1. Do not include the `build status` and `build result`
1. improve this document to let the decentent AI easy to understand.

## commit message requirements

- put commit message described in `./.tmp/ai_commit_message.md`.

## tools about MCP

If you are unsure how to do something, use `gh_grep` to search code examples from GitHub.




thanks.
