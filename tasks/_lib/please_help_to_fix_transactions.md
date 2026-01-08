# AI_TODO

## purpose

imagine you are on the project root directory, and you are a frontend engineer.
plesae do the check as per `tasks` described.

## background

the source you operate is at `source` folder.
`./.tmp` for your workspace.

this is a `nextjs` project under migration.
the code about `customer` and `customers` is known good and can be regards as a template.
the code `warehouse` and `employee` is the migrated code from `customer` and `customers`. You may found faulty.
please read `AGENTS.md` for more detail.
the dashboard pages are located in `src/app/dashboard/<model>`
the components are located in `src/components/dashboard/<model>`
the API endpoints are located in `src/app/api/db/<model>`

## tasks

1. Read the current workspace
1. there are some problem(s) in `**/transactions/**` file(s). plesae help to fix it. They are originally clone from `warehouse` scripts.
1. please take care about the `transaction` `view`, `create` and `edit` page(s).
1. please take a look into the `**/transaction/**` source code(s). rename the variable(s) from `warehouse` to `transaction`.
1. please take a look to the filename(s) and path(s) should be change to `**/*transaction*.tsx` as well.


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

## expected deliverables

1. Finished-products create page at `src/app/dashboard/finished-products/create/page.tsx`
2. Form components for finished-products creation
3. API integration functions for create operations
4. Comprehensive form validation and error handling
5. Test coverage for all create functionality
6. Responsive and accessible form design

thanks.