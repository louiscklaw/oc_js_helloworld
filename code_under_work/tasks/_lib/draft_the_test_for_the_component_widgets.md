# task1

## purpose

i want you to draft the test for the widgets components instead of the page.tsx

## background

the source you operate is at `source` folder.
the `./.tmp` folder is for your referenc.

this is a `nextjs` project under migration.
the code about `widgets` components is known good and can be regards as a template.
the `src/components/dashboard/customer/__tests__/payments.test.tsx` is a good example for page tests, but you should focus on component tests.
the test should not in deep at the moment. just a helloworld sanity test with snapshot is good enough.

focus on components in `develop_trunk/src/components/widgets/` directory:
- widgets/layout.tsx
- widgets/previewer.tsx
- widgets/buttons/buttons-1.tsx
- widgets/buttons/buttons-2.tsx
- widgets/buttons/buttons-3.tsx
- widgets/buttons/buttons-4.tsx
- widgets/charts/chart-1.tsx
- widgets/charts/chart-2.tsx
- widgets/charts/chart-3.tsx
- widgets/charts/chart-4.tsx
- widgets/charts/chart-5.tsx
- widgets/charts/chart-6.tsx
- widgets/charts/chart-7.tsx
- widgets/charts/chart-8.tsx
- widgets/charts/chart-9.tsx
- widgets/charts/chart-10.tsx
- widgets/charts/chart-11.tsx
- widgets/colors/colors-1.tsx
- widgets/colors/colors-2.tsx
- widgets/colors/colors-3.tsx
- widgets/colors/colors-4.tsx
- widgets/colors/colors-5.tsx
- widgets/colors/colors-6.tsx
- widgets/colors/colors-7.tsx
- widgets/colors/colors-8.tsx
- widgets/detail-lists/detail-list-1.tsx
- widgets/detail-lists/detail-list-2.tsx
- widgets/detail-lists/detail-list-3.tsx
- widgets/detail-lists/detail-list-4.tsx
- widgets/detail-lists/detail-list-5.tsx
- widgets/detail-lists/detail-list-6.tsx
- widgets/detail-lists/detail-list-7.tsx
- widgets/forms/form-1.tsx
- widgets/forms/form-2.tsx
- widgets/forms/form-3.tsx
- widgets/forms/form-4.tsx
- widgets/forms/form-5.tsx
- widgets/forms/form-6.tsx
- widgets/forms/form-7.tsx
- widgets/forms/form-8.tsx
- widgets/forms/form-9.tsx
- widgets/forms/form-10.tsx
- widgets/forms/form-11.tsx
- widgets/forms/form-12.tsx
- widgets/forms/form-13.tsx
- widgets/forms/form-14.tsx
- widgets/forms/form-15.tsx
- widgets/forms/form-16.tsx
- widgets/grid-lists/grid-list-1.tsx
- widgets/grid-lists/grid-list-2.tsx
- widgets/grid-lists/grid-list-3.tsx
- widgets/grid-lists/grid-list-4.tsx
- widgets/grid-lists/grid-list-5.tsx
- widgets/grid-lists/grid-list-6.tsx
- widgets/grouped-lists/grouped-list-1.tsx
- widgets/grouped-lists/grouped-list-2.tsx
- widgets/grouped-lists/grouped-list-3.tsx
- widgets/grouped-lists/grouped-list-4.tsx
- widgets/grouped-lists/grouped-list-5.tsx
- widgets/grouped-lists/grouped-list-6.tsx
- widgets/grouped-lists/grouped-list-7.tsx
- widgets/grouped-lists/grouped-list-8.tsx
- widgets/grouped-lists/grouped-list-9.tsx
- widgets/grouped-lists/grouped-list-10.tsx
- widgets/grouped-lists/grouped-list-11.tsx
- widgets/inputs/inputs-1.tsx
- widgets/inputs/inputs-2.tsx
- widgets/inputs/inputs-3.tsx
- widgets/inputs/inputs-4.tsx
- widgets/modals/modal-1.tsx
- widgets/modals/modal-2.tsx
- widgets/modals/modal-3.tsx
- widgets/modals/modal-4.tsx
- widgets/modals/modal-5.tsx
- widgets/modals/modal-6.tsx
- widgets/modals/modal-7.tsx
- widgets/modals/modal-8.tsx
- widgets/modals/modal-9.tsx
- widgets/modals/modal-10.tsx
- widgets/quick-stats/quick-stats-1.tsx
- widgets/quick-stats/quick-stats-2.tsx
- widgets/quick-stats/quick-stats-3.tsx
- widgets/quick-stats/quick-stats-4.tsx
- widgets/quick-stats/quick-stats-5.tsx
- widgets/quick-stats/quick-stats-6.tsx
- widgets/quick-stats/quick-stats-7.tsx
- widgets/quick-stats/quick-stats-8.tsx
- widgets/quick-stats/quick-stats-9.tsx
- widgets/quick-stats/quick-stats-10.tsx
- widgets/quick-stats/quick-stats-11.tsx
- widgets/tables/table-1.tsx
- widgets/tables/table-2.tsx
- widgets/tables/table-3.tsx
- widgets/tables/table-4.tsx
- widgets/tables/table-5.tsx
- widgets/tables/table-6.tsx
- widgets/tables/table-10.tsx

## tasks

1. Read the current workspace
1. initialize task directory and file(s):
  1. `./.tmp` for your workspace
  1. `./.tmp/ai_commit_message.md` to keep track your commit message.
  1. initialize a `TODO` list and write it into `./.tmp/AI_TODO.md`.
    1. keep track the sub-task(s) need to be done using this file.
1. please run `pnpm test` to check the result, writ it to `./.tmp/test_before.out`
1. please help me build this project by `pnpm i` and  `pnpm run build` .
1. please run `pnpm test` and check the result for error(s) and write it down in `./.tmp/AI_TODO.md`
1. solve the error in `./.tmp/AI_TODO.md`.
1. please update `AGENTS.md` according to current workspace.


## operation

1. divide your job into sub-task(s). keep them track in `./.tmp/AI_TODO.md`
1. when you finish a sub-task, please mark it as done in `./.tmp/AI_TODO.md`
1. when you finish a sub-task run `pnpm run ai_selfcheck` for regression(s).
1. when regression(s) found. write the problem(s) in `./.tmp/AI_TODO.md` and fix it.


## after job done

1. please run `pnpm test` to check the result, pipe the output to `./.tmp/test_after.out`.
1. please compare the `./.tmp/test_before.out` and `./.tmp/test_after.out`. fix it when you find regression(s).
1. prepare commit message in `./.tmp/ai_commit_message.md`.
  1. commit your change and describe your change in commit message.
  1. Do not include the `build status` and `build result`
1. improve this document to let the decentent AI easy to understand.

## commit message requirements

- put commit message described in `./.tmp/ai_commit_message.md`.

## tools about MCP

If you are unsure how to do something, use `gh_grep` to search code examples from GitHub.